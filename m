Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED61E3030F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 01:19:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8110286A04;
	Tue, 26 Jan 2021 00:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rh8Zz30dS01c; Tue, 26 Jan 2021 00:19:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A24386A10;
	Tue, 26 Jan 2021 00:19:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF7821BF33F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 00:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D716F87123
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 00:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xqTnjx5sNIQY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 00:18:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr140089.outbound.protection.outlook.com [40.107.14.89])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 79DA48711C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 00:18:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVCQkp3lwd75QIXPBhfJusQkQ1L3QvbNojYFtOJL4gZyLb+DoRUQbglLvDJ0uoXUwG63Qhf2m27Gp2cXKiqCNad+CPWIod0uQ7TMSuKgtydD5MBoy8D6yunpTyLd8WAepdjuNbiFg1xcZOcui6CIgraXCOsW+2IWxiUNBfUO+283y1Clr2JzjayG039YukjRyu1SNOd595Szj8gxhxbWvhcgGBmiBW2DmPgG0/fUamI/kxk0QVXxO0FAaAREw/nkYaUZSikrTk9Tk8pKanK9QNs+9NLaXV2rzaBKvSAeMV5TTIRp3Bm+0ID2cRnNbda7idcmzGyZhl8OPRLujPrh6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FqA5PHtnveU17Sq2NPmAX4oJdzel3tNEDyfouxbGtkg=;
 b=Coo3c1C8EUVmIEww9//xVaES8F3sImIgODtunTjVh6ZtzE9wXdLrQG+gwCAkgDkYQ+aPxobZ72BtQT8AYiYWHrcBfNXkZvtDoXXZyKndDDNsCNtUoKn9Qic5hK/Mi/jU6ZVn3fm5PvtkAd23g2UJ8EnUwXn/uKb5RQJ4ITu7x/2Z1QCgElJ3IrKR/nGJwZufMijI7gQeK4ItK4eqOtGG4HvV0HQ8AM8Xb3hCFyawzMLemZBqy4n1VSFIi1dFrcmN8SkwYdWSHWqc3mfb1MtGu2cK/b/g2M9X/w53p9sIpdxcmm6gLw/iUcjQeDeMXVUQCKV5mo8fEROsllVTBYiM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FqA5PHtnveU17Sq2NPmAX4oJdzel3tNEDyfouxbGtkg=;
 b=FuaCpEWwJMZmjg1xCz6P8dmYzsYyrGRJ7L3IBxPt2hKIc85lT9FctEV4cnEYqdMZzR2jyec9rGXghH3lNlstNJn0H8r58YFZQjkgaDyheeNSeScTTXb+c1b/9qTvY1s8Ihiyo1VITLeDwudZqb8/ulqrEcXrfG7ejRHAETmXZ/k=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VE1PR04MB6509.eurprd04.prod.outlook.com (2603:10a6:803:125::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.17; Tue, 26 Jan
 2021 00:02:29 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7%6]) with mapi id 15.20.3784.012; Tue, 26 Jan 2021
 00:02:29 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v3 5/8] igc: Avoid TX Hangs because long cycles
Thread-Index: AQHW8RBH771cWx+OG06we+xwGrQpUKo5CvAA
Date: Tue, 26 Jan 2021 00:02:29 +0000
Message-ID: <20210126000228.gpyh3rrp662wysit@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-6-vinicius.gomes@intel.com>
In-Reply-To: <20210122224453.4161729-6-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [5.12.227.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3e4a4399-9c9b-4b69-05a7-08d8c18dac3d
x-ms-traffictypediagnostic: VE1PR04MB6509:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6509D4D9201569DBEA4F5BE5E0BC0@VE1PR04MB6509.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ShSfsBW7/56lT9eW0MyoVH998owi+ygiO5AoBU2o27sRzbXApoXpVnKSAzDcMhFksfsu74JIzwZqJitilDn5GQZ8qeiGHEwWJlbXVhvHNv+b1guzxw6+nlh+avbk97DSzUxu+LfW/qYR5gh/NPYd2MF6wXTPffDswqa6qh6/uGZ2EbZwrAiqBEE/wvGrq+gEXnfW6pvhx3NZDPvQSLZ2oRRZe2wUyhEibvpjg2B2HSHaV5FeyjD+5ES1O1rLjT8tieahodhFtRVPBUq6IHGG9LykjdfkNTqpe4ZkVJZtXBmagul5Zc6abVjTZfM1M852s5S1OCPrhLK81nl1VFZS1VeF/sjQK9I1gGJQubHX1M1qKxbpVI62Du5uI+r1IiwyhenVJmXAHFsk1oFhKty6GzRmH0M6YaPA9c6YX9i8QYB4JHv1rluG41rWe/2jfdQ7nXMSQPY0JNN14xu28uX+qXXqZyjp00ZN+5fIAAtmYT6vdq38nRi4JDE9hz2tZSQjI0pSCwgqbWtmT7o117HUTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(396003)(346002)(376002)(136003)(366004)(39860400002)(2906002)(6512007)(4744005)(83380400001)(1076003)(6486002)(54906003)(76116006)(64756008)(66556008)(8936002)(66446008)(316002)(44832011)(478600001)(91956017)(6506007)(86362001)(33716001)(4326008)(7416002)(6916009)(8676002)(66946007)(66476007)(186003)(5660300002)(9686003)(71200400001)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?DTpOBkC7BtFuxBWjKrPY1Abbc6gIizokc2XoyxIfPyj+IGm915USZ9CDao39?=
 =?us-ascii?Q?NOePCUWsCm/2ntw1KHd8emjQufRpngHbguv8rxKXC5kuXB34E5rJ+KflO9zd?=
 =?us-ascii?Q?9gxXz4wWB33aQaAtEd8jLYnDsbuaeqfnUqp8gz2kQAVhP98N6HsvknSnOVPg?=
 =?us-ascii?Q?/w6IO4kXc13nudlYhWcme0+xexpvb30HMmGOqyDLICU0oWQsOp1mgJWE9sTP?=
 =?us-ascii?Q?GqMvDZOkEYIJey6TLVG5tXlzv36YchKvBRbHsY2zc8EC1dcUN93dmiyNVFH3?=
 =?us-ascii?Q?ihusSVTbUgwMWMC04XWsfcpvd/xlJIe1uwR32qMB5LqLoQsI2h1ELhmVRTTL?=
 =?us-ascii?Q?o3rErZ5EozUSZ8mxbZ3DlHyTRF5Wcr0sz1BNPOaFKKLpVMyWIvmFRw7gZvEu?=
 =?us-ascii?Q?2dCkO1CEiD0H1/uBaf6p/4sj4CpXImZa6nAG1yvezwDj79P8nBCr7NTTqavs?=
 =?us-ascii?Q?z/9UR2yHSIUAIA+0ED3ryB//g0OiCiMWBezNSjLOWTXFEN8U+H2PnAODjFtH?=
 =?us-ascii?Q?8Hb8R5wzZQmq36zBJppoZjd9oUAG7MNCZXq562LkL6+nLoTkun/jaXaQH7ZM?=
 =?us-ascii?Q?p/rd2UyXwQyxowBZ87iPeem2cbSeICf0WJDrjp/hAAfEGbxK0FNTbNDMcgD9?=
 =?us-ascii?Q?NabyghKAyGwenDpdbENIAbkAsOY+1YcIC3tCzX5eRG2ekIyYHvFXkoCa06Lr?=
 =?us-ascii?Q?k7uXH0dIInMtViy1m3jB3tlQ8JN169i50adWXFJYRGUzF+vLMJK2g35ucGPl?=
 =?us-ascii?Q?WqRlfpEXMJjmB8qOy48d8IOvARcYHjljv3t/UNuEimLy8s7U7AlhxVlkV50h?=
 =?us-ascii?Q?XxdJybJxU8qWLi1b0fXAmGRXq3OImI8u54/uge2NBVw0JJDzfDoexq3eM55O?=
 =?us-ascii?Q?8DtNsscJU7nS6BdWojdxhdybw+AHaB0PfwaoXG79tsW6tUNEecgwGUzYtC5T?=
 =?us-ascii?Q?CkW5HCJZyYX51nkUHatthLElsg7cVubE8QgRnF6B3UFAjE5p/pW7VvGM1Hhs?=
 =?us-ascii?Q?MoOYwmAQBiJQbeCAMbl2GohV4rEJ2TkEuDFxIPHCGVcGyTLw3oN8sxokbwLx?=
 =?us-ascii?Q?MgMSwc9K?=
Content-ID: <9017B83999087042AA350220CFFD15A3@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e4a4399-9c9b-4b69-05a7-08d8c18dac3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2021 00:02:29.5895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h30/nxjMlzTkUzvdDz938IxNiqZ92DSly8NjiFnJtjnbLXvjrWKZQJt8zRbra8OKfDD0CeBNSXXZFO7AhuIKPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6509
X-Mailman-Approved-At: Tue, 26 Jan 2021 00:19:27 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 5/8] igc: Avoid TX Hangs
 because long cycles
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 22, 2021 at 02:44:50PM -0800, Vinicius Costa Gomes wrote:
> Avoid possible TX Hangs caused by using long Qbv cycles. In some
> cases, using long cycles (more than 1 second) can cause transmissions
> to be blocked for that time. As the TX Hang timeout is close to 1
> second, we may need to reduce the cycle time to something more
> reasonable: the value chosen is 1ms.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

Don't you want this patch to go to 'net' and be backported?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
