Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A669D3B5B0F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jun 2021 11:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3442F607CE;
	Mon, 28 Jun 2021 09:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VbJbhvsjOtEp; Mon, 28 Jun 2021 09:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40197607BB;
	Mon, 28 Jun 2021 09:17:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 810341BF47E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 09:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C3A860778
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 09:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NLR_vuwKT9YI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jun 2021 09:17:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2088.outbound.protection.outlook.com [40.107.22.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39C3E607BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 09:17:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKHAfk29kPse/K1fV6Ct0MEp5QjtnzQwrpPvF1HGSAQav1BVLerRicWPcwcR0UUYOpcGR4KHiVS7wcOfwXeDUVOkuCGzbALWaYcS85fUjMPtN0Tsab2xswXXsD2WLct7RhjwMlkRkERE3J9ak7dkO1NHZYppVzY/VK3Fbw48BCAX4IghFuVmJ5zoaYiQDX8HFfnVkAuoCM4z+URlcyCJaoQj6h7V72NbGIwgmzSAnO0auDGFXNfTYueIRhNmL9KNZF1kH1BGxukTVqBXFxhMB5N2W0xKUI3W4GfVycoCn9KHhwQ3/wkyyElT4Lrx8a0C3uSA3wAcRuHiAuz1jtQkqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMpKHLt/GGDB9t2bDj94BXDMh3I5EWxR4DHV7+4N0OQ=;
 b=T8KVzZjw8NqP0IQ5VD7WqM4HBUG7hMqHVA0iUVyV4lc6hEetBDGQcQOZhGPxZjNQd7rMzbAnBmGUls832l5P5aXcRx26eXEKAujbhkPN99wIDu4spcNiRC/RoMOI7x6tDCbc08aGHmD8oFt3ndC2sma05etIoBJdnAHrzoZaZWQgOqBUZE8BEVNcr0U9Nzpu8vbjREA9kvnBw22Y2JI/Apy1xbTHBBZnVLbhxwVqCJyMoY5IsvZlz1tNfZ5/h7GWVARoRkz/QzypYkWI+5KmrV0BAIrqn9bDnHsoOiEUZAKSV8bquq6YMR2JkwIt91cnJh6g1felUAU9Xs+ELjSmIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMpKHLt/GGDB9t2bDj94BXDMh3I5EWxR4DHV7+4N0OQ=;
 b=f/RSRJxiJGi5rTo03DBWO1r1OYH75nS5nAzkJOmrlTrEI01gKU+VlW4Xq2XLrUBqXIWr6LlBhuu1REegmswa7ws/o8uakxVGV6JMRiRatA4njWX8v5QmZdf1aIx6gVuLmyTLcK+CwvLUXy/FhpIc01h2Ujbdz50nI5HVknafG3U=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR0401MB2685.eurprd04.prod.outlook.com (2603:10a6:800:58::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Mon, 28 Jun
 2021 09:17:14 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::b1a0:d654:a578:53ab]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::b1a0:d654:a578:53ab%7]) with mapi id 15.20.4264.026; Mon, 28 Jun 2021
 09:17:14 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v4 10/12] ethtool: Add support for Frame
 Preemption verification
Thread-Index: AQHXaiLwcLBt6arcA0+BcW0HnQpZuaspKHyA
Date: Mon, 28 Jun 2021 09:17:14 +0000
Message-ID: <20210628091713.rezkkpwqacz4oqyj@skbuf>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
 <20210626003314.3159402-11-vinicius.gomes@intel.com>
In-Reply-To: <20210626003314.3159402-11-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [188.26.224.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 539cb5f1-3cbd-4858-c579-08d93a15849b
x-ms-traffictypediagnostic: VI1PR0401MB2685:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB2685554173C59229B9641BCCE0039@VI1PR0401MB2685.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O8IoVnsevus/cjdhWNLu+VLmmyEtPOSaFrr30bxeMFR0VHLgwwdo2qwRAxShltqEOYd7yREBHdo/dpSfI5SRtTMmCLTY82QZl2NXfVPmUSygRbs0LsS7/pvr3dz+4AoYjk7/WoLCYQxvfYL1Z0GCsMy9MnIa2MLM+7kHPJ5m1uRGgqxYUYaz0PnyDw6ffpQGLvUta7zbNPL96EbJK498IxegJECQ57J40OMxWfZ/7EAPhSUIVtgUxGeWVB5LTIFmaY+QjFo1hyZiIWJUVZwYhOlf/ovOdNN0Vf9qsKjIVAf3UW5/TOlkzLSCJYJiw9p8IiTZ7vfAvQrWu8YRs5qrEUy+rSY1L8nBLctDbJ9GX8ibbCYKJiyoVWmQX5gaSGpsFJTlwVPOU2eR9TY6kcLWCAK//nzwKLcIGEimEPSwDIgV/Nl+XAYuKfAHSnmTZlgc2w5jqD8XZlvTw87/DbTDQNrGRJIMMwnUqHinfUtR+LWpenldUmU21mL0RnEg3gHoueirocbblJgZW8+hmjO5Ce8DRgX+s173SuEY+9uSPXsm26Sr2cGgCwuw0jXKIygGyUi82tm6j5kXJb/VJyrhg7U3FtnYyPn+hdX3GwUzn+x/uOc9zFR7ZCk7cJAZoo/kRQzAn3kuBVuA+zVFccl6Ug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(39860400002)(136003)(346002)(396003)(376002)(316002)(66946007)(66476007)(9686003)(76116006)(6486002)(6512007)(71200400001)(54906003)(1076003)(8676002)(33716001)(2906002)(64756008)(66446008)(478600001)(8936002)(66556008)(6916009)(86362001)(44832011)(38100700002)(5660300002)(4326008)(26005)(122000001)(558084003)(186003)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+JImhbOiMQEAdhNyyGwzwTAPJsHz8Uu4SMtOgR/sRuCuSgerD1GD+E2KHpmD?=
 =?us-ascii?Q?s06/piOKQV/0iGrDmhfRcm6DRuRhrF+V7r3/HNAzxjFmR7ZCykIWskHqQs9w?=
 =?us-ascii?Q?h0VYCI0e4UtOvuMWkBpc2PLkw0SMfQFVPcMQaREK/ooj2exkMQLL3Rbq26L9?=
 =?us-ascii?Q?LR01gVBUjKjLA5yHVubMkcxK9CtWW+0PObjr20cs8OdmhQpuhRNSdv/pOCjk?=
 =?us-ascii?Q?7MuJ+dbyUrHPA04pOt2+djhKpYveCYPGiAQK1fvG9FUYZg3KD2peWPCrVdqB?=
 =?us-ascii?Q?498GZnvHCBu9SLUfgGciueQA3bABRsyg+1FnLtvG0xOR7+sxok4Eb3/rLGYD?=
 =?us-ascii?Q?emIdboNjkcwIx3gtqb1Fd2dCAC4lmoga/3a5tYHiOXePxIJROoRtsVdhLT5I?=
 =?us-ascii?Q?wPT+Wr9tPi9EctSt4cymPE7iXTJqGDRE3AH9deVJWXKnqXmwC7cPlIA4FITx?=
 =?us-ascii?Q?Ix6ia+E1Om0aIpTwEFao4R9Aala1OkHHi53FbkpxfM/BsRV4GaUjAR05OkfY?=
 =?us-ascii?Q?c+L7tJBYUtVF5qvR4WNBNceBf5RbuRHlqYW7mxbpQWClm3S00+rTznzdOnk6?=
 =?us-ascii?Q?fkkPYmk9OvRoRkARaP5ypbQTRiMkXT3XpNiASmkY5iOJ1JAX6FY53EG5XTR3?=
 =?us-ascii?Q?zO2/+wqkodpVMhHbnBZctMwx6/LPK8r6ocJ1L285dV+/WoLFwQ3n45h949nn?=
 =?us-ascii?Q?Ds5ebY5lU0INdEekkqIUf/GoLq/raNGMyuDs5tl26ZPYD3lRN2vqf8Z0+607?=
 =?us-ascii?Q?mg6d1gBCRQvYPCO4XRHE9+RQRbqlhk+cvu5Ddcm6EM0P4QPMDMpVWiX/8/e8?=
 =?us-ascii?Q?i+LOUdeOojBMoO+UiYQVGCV3R/65aP9GDsRzFAsgQGLjn3+Fxv0J3+nVW+BX?=
 =?us-ascii?Q?EgRmy8AjSPlkgCPorMpP9U3gAvxi4ruqsa/qedzpv3Ow28wurTAWhcTx7891?=
 =?us-ascii?Q?FnlHUUGP/hoS8nKFViPEUK+mNBg8fuHH2o6Ef5IA+KD7yG1GPxAwCdZ0DVBA?=
 =?us-ascii?Q?9JjFJjZtIiF0uPFIISPdn+AFuai4CJKjJW08EcK8CctCe3FeVibn0ezirmTZ?=
 =?us-ascii?Q?bwvQKjmTAcOakgLdnbbuc+AKuQWMSziqXly78v7ki1USDoHbCZsClXADaMpH?=
 =?us-ascii?Q?Ngq9Gw197BCrsxVaRQdGqDm+tqgiY/kFuSVcxYkhMpA04QES/9dVr8sEcUjN?=
 =?us-ascii?Q?8UWcNCSWVDzeVt4QXqdI5+WDOetsE4RTmBPH6us0caRah19jx5anS/1V/29P?=
 =?us-ascii?Q?79DY58LvVdi6rHY6fMaz6Ta4XsvjIo1UNS4ClqZur+KCob/7G7qF495Pjj2o?=
 =?us-ascii?Q?f1tFJsh+Je9LsWVQ3lSrDkjC?=
Content-ID: <2953AF1F0DDFDC478F3BFD94006FE014@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 539cb5f1-3cbd-4858-c579-08d93a15849b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2021 09:17:14.1983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FFZY7NdO3NMARGvbJNgcZ1I/3VFitFSVG5qgk9hTUX0VDoKHGVBNxxUKpv8rssRXo+GzoZrtsS83k0PnYBsRLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2685
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 10/12] ethtool: Add
 support for Frame Preemption verification
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 25, 2021 at 05:33:12PM -0700, Vinicius Costa Gomes wrote:
> WIP WIP WIP
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

This looks good as long as it is squashed with the first patch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
