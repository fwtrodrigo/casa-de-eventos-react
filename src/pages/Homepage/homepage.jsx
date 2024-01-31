import Cabecalho from '../../components/Cabecalho/cabecalho'
import Rodape from '../../components/Rodape/rodape'
function Homepage() {
    return (
        <>
            <Cabecalho />
            <div className="conteudo">
                <h1>Bem vindo a Casa de eventos!</h1>
            </div>
            <Rodape />
        </>
    )
}

export default Homepage