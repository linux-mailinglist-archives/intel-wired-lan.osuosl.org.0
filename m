Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA4E4317D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 23:37:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 229B7875D9;
	Wed, 12 Jun 2019 21:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCVJaZh28jdz; Wed, 12 Jun 2019 21:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7104866DD;
	Wed, 12 Jun 2019 21:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 894091BF315
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2019 21:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F4DF20789
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2019 21:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibe7DF67yK9B for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jun 2019 21:37:51 +0000 (UTC)
X-Greylist: delayed 00:34:25 by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30126.outbound.protection.outlook.com [40.107.3.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BA4620483
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2019 21:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector1-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vUbzugFiJMFPwYXfphLRNTjGPjWbuecALmcy5AXZMN0=;
 b=h0kJGE6JLetNRayfLTvbhaKFc2MvAs8N72851ilAkFmLmZCyo/g/ERBqbxc8TljzDdvz2CxcKG1VRO1XI2z4+WAxPk0qDNoTg+plhIgoLp1cWV5cMT3SSJ0SEQnvD12sPohbpAzdlQDJGHQL2ssu0JnFn1A2MAKFj031OhRF+6Y=
Received: from DB8PR04MB6426.eurprd04.prod.outlook.com (20.179.249.138) by
 DB8PR04MB5659.eurprd04.prod.outlook.com (20.179.10.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 12 Jun 2019 21:03:21 +0000
Received: from DB8PR04MB6426.eurprd04.prod.outlook.com
 ([fe80::8d44:be0b:cdaa:ba55]) by DB8PR04MB6426.eurprd04.prod.outlook.com
 ([fe80::8d44:be0b:cdaa:ba55%6]) with mapi id 15.20.1987.010; Wed, 12 Jun 2019
 21:03:21 +0000
From: Stephen Douthit <stephend@silicom-usa.com>
To: Max Lapshin <max@flussonic.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] i350 software defined pins sysfs access
Thread-Index: AQHVIJnzYMyL0CLnc0KHZnEaqpOIHKaYg0+A
Date: Wed, 12 Jun 2019 21:03:20 +0000
Message-ID: <3827f4b8-506d-f55a-3279-f8a17699ee5e@silicom-usa.com>
References: <C0C7FF38-286F-46CA-909D-1A02EFDBBF0C@flussonic.com>
In-Reply-To: <C0C7FF38-286F-46CA-909D-1A02EFDBBF0C@flussonic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MN2PR12CA0018.namprd12.prod.outlook.com
 (2603:10b6:208:a8::31) To DB8PR04MB6426.eurprd04.prod.outlook.com
 (2603:10a6:10:107::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stephend@silicom-usa.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [96.82.2.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b73ec22-5ec6-43cc-6615-08d6ef796648
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR04MB5659; 
x-ms-traffictypediagnostic: DB8PR04MB5659:
x-microsoft-antispam-prvs: <DB8PR04MB56590FB1864B8D78A8BE83A794EC0@DB8PR04MB5659.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(136003)(376002)(396003)(366004)(189003)(199004)(5660300002)(66446008)(486006)(2906002)(316002)(6512007)(68736007)(305945005)(86362001)(64756008)(73956011)(36756003)(256004)(66066001)(31696002)(66476007)(7736002)(3450700001)(186003)(6486002)(102836004)(6436002)(31686004)(14444005)(26005)(66556008)(229853002)(81166006)(53546011)(11346002)(52116002)(478600001)(8936002)(76176011)(2616005)(446003)(71200400001)(476003)(8676002)(386003)(66946007)(81156014)(6506007)(71190400001)(43066004)(6116002)(2501003)(14454004)(6246003)(110136005)(3846002)(25786009)(53936002)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB8PR04MB5659;
 H:DB8PR04MB6426.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silicom-usa.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pMfhCHpu+hRHPVQi7cgd37rJTFdfYpuVPkuUAZwJM5P+kd1W40xI69pRxpUNyDlkw8+KNsy3T4dA0sRfEN82MXLTPpztwuN8e7tv7su4LcV6oti7jr7nVdIGEUGpL9ew1l3jYgPXkjlsF47833zVzzTwsUyPHaF2rXiCt3hwaf6+f4Du4O49jLeGhYmenDNk4t9s/APPek2AE37akr/gRX5J7PRpviTbmu1yXwmv43gCDc5y4t7vPyCKFerSTmaJjU2NCPcMhTboC8AOxGmlVallJGsli/Tj2BxoTAcbupEC9K+9anzSJNpaCPubgGXaFR3SsfeDB2k5YHXbaVJtaXU/rApHxaizId/eRNSOnpHEWjOsVal5WUPamHJQ0R/CMMlSvrLCPtoBzf+rAcyT8SmFuN/Hf/2q3ghwwTZbAZg=
Content-ID: <9907E86E0DA01344A80B3863F34B349C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b73ec22-5ec6-43cc-6615-08d6ef796648
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 21:03:21.0922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stephend@silicom-usa.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5659
Subject: Re: [Intel-wired-lan] i350 software defined pins sysfs access
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Reply-To: Stephen Douthit <stephend@silicom-usa.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/11/19 5:01 PM, Max Lapshin wrote:
> Hi.
> =

> Intel i350 nic has software defined pins. =A0I have a custom hardware whe=
re these pins are connected to
> some peripheral and I need to enable/disable them.
> =

> Here is patch that enables access to them. I can turn off peripheral devi=
ce by:
> =

> echo 0 > /sys/class/net/eth1/device/pin2
> =

> and turn on by:
> =

> echo 1 > /sys/class/net/eth1/device/pin2
> =

> Please, give any corrections and advices if this patch requires any chang=
es.
> It is made again git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/n=
ext-queue.git=A0 dev-queue

The igb driver already uses these pins for PTP if that's configured and
the 82575 uses SDP3 as a power enable for SFP cages, sgmii PHYs, etc.
You'll need to avoid letting userspace poke at SDPs that the driver is
already using.

Assuming this can coexist with the existing usage, why not register this
as a gpio_chip with the gpiolib framework?

> Subject: [PATCH] i350: Add support for Intel i350 software defined pins
> =

> NIC i350 with igb driver has software defined pins.
> Allow to access them via sysfs files.
> ---
>  =A0drivers/net/ethernet/intel/igb/igb.h =A0 =A0 =A0| =A028 +++++
>  =A0drivers/net/ethernet/intel/igb/igb_main.c | 127 +++++++++++++++++++++-
>  =A02 files changed, 154 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/=
intel/igb/igb.h
> index ca54e268d157..2453674464fa 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -79,6 +79,20 @@ struct igb_adapter;
>  =A0#define IGB_I210_RX_LATENCY_1002213
>  =A0#define IGB_I210_RX_LATENCY_1000448
> +
> +/* Software defined pins 0-1 */
> +#define IGB_CTRL_SDP0_DATA 0x00040000 /* Value of SW Defineable Pin 0 */
> +#define IGB_CTRL_SDP1_DATA 0x00080000 /* Value of SW Defineable Pin 1 */
> +#define IGB_CTRL_SDP0_DIR =A00x00400000 /* SDP0 Data direction */
> +#define IGB_CTRL_SDP1_DIR =A00x00800000 /* SDP1 Data direction */
> +
> +/* Software defined pins 2-3 */
> +#define IGB_CTRL_EXT_SDP2_DATA E1000_CTRL_EXT_SDP2_DATA /* Value of SW D=
efineable Pin 2 */
> +#define IGB_CTRL_EXT_SDP3_DATA E1000_CTRL_EXT_SDP3_DATA /* Value of SW D=
efineable Pin 3 */
> +#define IGB_CTRL_EXT_SDP2_DIR =A0E1000_CTRL_EXT_SDP2_DIR =A0/* SDP2 Data=
 direction */
> +#define IGB_CTRL_EXT_SDP3_DIR =A0E1000_CTRL_EXT_SDP3_DIR =A0/* SDP3 Data=
 direction */

Looks like e1000_defines.h already has this info.

-Steve
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
