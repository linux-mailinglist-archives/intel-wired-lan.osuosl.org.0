Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A225A92A572
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 17:13:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5895940AE2;
	Mon,  8 Jul 2024 15:13:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gk36lN2WtQso; Mon,  8 Jul 2024 15:13:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5520640576
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720451589;
	bh=jtkOdZLbSBcLhg6fQJiAqc1TCBWgvkocss3C5ek1odg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zE8AzKKO4Knr9ZeMW5ZeHos5sYSFjEcbBoq+c+r5GtE5/K/q23vg+jsXYewV0iaAe
	 GdkvocUxuWJSkWN5Hcjyt6C2BwJB2ZkQJaPtIuDJSi/7KF9zz+Rja3lPGDZ0lRULKl
	 KEY0CDbJ2M37+swC8HIUScFaOXBRmtQ1DfdvZnHVUXZ2BA14WFCtGdgEgqicBHNGrv
	 C7idZZTEjUGexymWhr8FynBQkLz4vzKbxMZFJTc3uZvbLH/5s15Tvvmuowpt6jtlAv
	 NDBqFfD1uxO1QyaTVvT++js+A25JbsU3pYTwc0n/69BpfO2leV9ItC4E/mEiUU9+Dn
	 aVBtHYCg+LJVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5520640576;
	Mon,  8 Jul 2024 15:13:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3D961BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 14:37:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C031B811E6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 14:37:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oC0HRNCMkNX5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 14:37:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.92.89.31;
 helo=eur05-db8-obe.outbound.protection.outlook.com;
 envelope-from=email@millerthomas.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1D53D811D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D53D811D5
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05olkn2031.outbound.protection.outlook.com [40.92.89.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D53D811D5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 14:37:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nLBDO6KAK/pS+bNrIsXiLnCELQuMx9UgG3YfACYFfuE1DuRFblPuxAhunHpsjd3Dqy8A5LJI6JW3WR0BrhqLcmqUfbbMpLK5PLiGyCWjyCUN3B+5SN21+4/RX/KfK9U8HUe0RmN8aYp0ct9W/Qc1Zv60ZKZwF/oBReQ0gq91r/hzqgqUtPEjvsIK5FeLUlh0tLIQOlCRTBOQM7vWq3UfEj56YsZU4Id1RXUYzYuYFpHkj/ghmum7i4uk1ZMazYhqg3kJKyytq+5MhqgaT0Gaq2xAJrqDKh1PblPaRvxF6930Wz8pFPvfBEtWBHAFArsd/w0NXluqnPe/ooXasMnScw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtkOdZLbSBcLhg6fQJiAqc1TCBWgvkocss3C5ek1odg=;
 b=JSTn3lcwE9BUITq0T+FPJ5zNKLiJBejnBWuZ1tfAgFj1tS3iqFehOwTlbuHFp5A6eIOtr4xlgry4WcscVRxibhdfcV7THfvCvHXkMmmQdYZdzJ9xyDPC4wH8jpBKuZY33wGtm7ub1UKrC1HOPhB2vs7l3CmN3p4NhnUDG+QBkS10WHuEfcGQW2Mj86Ct5SzSZDVCYJiAAfxha3wiBHKfNyD5P4gvbl9LPTU+tsH1wYzN8WiP2eeAdsnGfQh78NzRVTy15umx7B/Xmss5ihW49g3KJABnQ2MPvAf6gN7XXLCA5F2TYk5XrjrwO9xyS1BWd89iKIaO1GBD6UTXfsDQAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB9P190MB1937.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:394::19)
 by PA6P190MB2056.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:3c6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 14:37:17 +0000
Received: from DB9P190MB1937.EURP190.PROD.OUTLOOK.COM
 ([fe80::8b4c:1eaa:5ca7:a0ad]) by DB9P190MB1937.EURP190.PROD.OUTLOOK.COM
 ([fe80::8b4c:1eaa:5ca7:a0ad%7]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 14:37:17 +0000
From: Thomas Miller <email@millerthomas.de>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Power management bug in I226-V Linux kernel driver
Thread-Index: AQHa0URV1w4xQQ1KCUGEjIUCkdaS8w==
Date: Mon, 8 Jul 2024 14:37:17 +0000
Message-ID: <0FAFDAAF-DEAD-4419-A147-D752A35EA67B@millerthomas.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [0JI/oD2XX5algCROVY59q6247WAh5+a5]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9P190MB1937:EE_|PA6P190MB2056:EE_
x-ms-office365-filtering-correlation-id: 45cc4ba1-2022-45a0-2ae4-08dc9f5b7793
x-microsoft-antispam: BCL:0;
 ARA:14566002|8060799006|19110799003|9400799024|461199028|3412199025|4302099013|440099028|1602099012|102099032;
x-microsoft-antispam-message-info: qFRTYmL0+7m1NyoK1lj3fNb3owwbGp7YKBlaXlWZv43MoUQOOhXRIPz0cRx7tzE5ejPr37s4YZd0N42LqWPUcqg72dLChQJJGZNgjc7s8v0cHEbq8d9w4QXA8Xb0CSAnWR8DAO26+ZpXo3uJuRMN/GfIPiwwPo8bdjHAxfNYXnQpTRV0NbUubLeLCwsg6Qd8bq/zbUaaPGLU+xDBCMAKnQPfSTBWQJ/yI5s07pfHh+sy1K9Qxb8DbfdWNdfq4Jk1Ukx8AOdubhtnIekv5Dqq6+ZKJGVd9pUwQXBo98skDR0v0A3Jnjy8at2eOhkA0d+EmZNtpiF7upUzw0DK77Jw6QUD0zV5CoI8IV34nH9/37+icmdeE0hM7S7DXUUfQ6RnYhJAP6x0ZQXR1zp8rr/lJG2dNCJOuIS78Bqay2MEPy2Pgo3/Tv5c3Ubf+warVrFL/o3nCMH4xZLsAPRN5BlAlLfGSJ/yljUOsymX+5vAnKaj/3RQl0fpWcpu3ttyH1mwO3zanmcHcXGQ8Om3YzH80xt7KMWQy/V32JgksbTjt1z6HgyfYdKoIg5iiVR8LGp2p+jLBu8E4d6WvOx2Dulmzkip98fNs3k+RttTgFeQYPDC6JKxeEzxp3lXdgDtXbHsrTV5++Ohlqf1ipGkwTrl5FGOZ+AzkIzR1niQUOFUN0oLYo3Bb6H4SmZpzJHDhbCHKJcmXllG8jvcBSJYMkJxbfluzeuGdxynAugxygMWnB0Vyw+9EfAdw/dMR/ayL1NjyE8frlFD0GwYNt7fzhrq2g==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fEIWBUdX1I797pxEu2jR9kH5sEO1/XRTeTWPbTrgxhKgt+B3JXjoJwzVs4k5?=
 =?us-ascii?Q?9FhomPdWp8uuxXMde3fx1d8D4wzgLQQckilyUjCB5Sx1ahRYlHxNUIPE6qsA?=
 =?us-ascii?Q?Lbjzc6qAsOXF0KhujxauzuNrBARhRFq9nRbW5kFDaT6ur38Vxq8AcaFzo+o8?=
 =?us-ascii?Q?0s0179Gp3NJioB6mhjbWTW/LOGkO2ZJpdGi/Ep4Yjpu5W8dZ1Nd8SUgTXI+h?=
 =?us-ascii?Q?vqCNPGQpaPgfcnCkuwp9xDVjDZ8KwzbM/TfnxmnDkeRNqozzLBgM8LvewXlJ?=
 =?us-ascii?Q?78jtvtPv+8HI7FvamG+5zFCgmMj/679r9dCnJxSvdm/d/YNHoqTt26SYz26W?=
 =?us-ascii?Q?WQQQJnbFLExlrOCYNP3XMCuMcCZQFAumcL/egWigqEDnVHrIiv93ZEoINfEE?=
 =?us-ascii?Q?PyjFP5fkjxsHYKnlPU8rhskSig/QOLHkZUB6oAR9eFElAPp3FUoYPh+ZK0rM?=
 =?us-ascii?Q?Li/dcJNeUuqXLpWNZTjBwXHJThJmUKaEFZ6VDgQ1cE70N9rACu7iLNogI3qd?=
 =?us-ascii?Q?8B1xSfSqiNJXKJL1K44NICH8TwszxBMA8z0DwzinPoxcYlSC89VPNvApuwvr?=
 =?us-ascii?Q?kZDNf1Y/YrZeGfFQB9lbmO0YKX++YyGlHc4AcKFke9ZnUhehgDW8xJrJDZEV?=
 =?us-ascii?Q?Xd+6m9mENZNgPR05S7EjuhBKL3R3oqvdb8KM7LQpnUpf6sLU1P1XUhAPX0xp?=
 =?us-ascii?Q?Eelc9Ux6cOrsQqDjgHKkHAF76Vyq+Xsbc4LCBApUi/GwV5Fp7lUb4LP88wER?=
 =?us-ascii?Q?LuBZErH/4CTU6nLip98H6AXAViVSz04WdMQ1HCypsebK1E/t1G2GC4QBUOsf?=
 =?us-ascii?Q?OljAlZrWnFqc7I5bZ2I6vxL/WNGaXAGBLhGc7cqGz+AtTG2D9C4Gpczm0+OH?=
 =?us-ascii?Q?bG3Q30NXNbeqWzfeLa0ZLbya1LUGhWWhc6bRDtM5R6E0ZAOQqqegxsbVF3x+?=
 =?us-ascii?Q?4ZaAZs/jX4xocZF3vOqwAIxN9lokcgMeQFQbzxP4A87AJwPqGQvgZ12nr0ID?=
 =?us-ascii?Q?mZ1g467QPL+fM4W1JflNiC8SdSHqa8OKfBfXClTPiPENQsNCdZK1Fzj8w8wZ?=
 =?us-ascii?Q?ARFcIQGA42OVObOtblIeCH7dlt9COVioUcf4/tvVsTj64vONhrgjaVDaJiCC?=
 =?us-ascii?Q?7zXBqMKHTGOZ+NcutBr48INLsx6o3hH5WBbb0qWx0X83kmNolPjGjxPnnW6G?=
 =?us-ascii?Q?EAWBsyVbh0R0N96P1BfIE1oHIFEiMHVF7rzybchyv0PH+Db1+/S83uZa/1I?=
 =?us-ascii?Q?=3D?=
Content-Type: multipart/alternative;
 boundary="_000_0FAFDAAFDEAD4419A147D752A35EA67Bmillerthomasde_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-4ff97.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9P190MB1937.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 45cc4ba1-2022-45a0-2ae4-08dc9f5b7793
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2024 14:37:17.6338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6P190MB2056
X-Mailman-Approved-At: Mon, 08 Jul 2024 15:13:08 +0000
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=millerthomas.de
Subject: [Intel-wired-lan] Power management bug in I226-V Linux kernel driver
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_0FAFDAAFDEAD4419A147D752A35EA67Bmillerthomasde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



I've noticed that there's a bug in the Ubuntu 24.04 Linux kernel driver in =
for the I226-V ethernet controller. The device crashes, when a user tries t=
o utilize power management capabilities of the hardware.

The devs of popular power management tool powertop has also acknowledged th=
is bug on Github<https://github.com/fenrus75/powertop/issues/143>. Same for=
 the manufacture of the Odroid H4 devices.

There's an open bug report<https://bugzilla.kernel.org/show_bug.cgi?id=3D21=
8499> from February 2024 over on Bugzilla referring to the same issue, but =
it has yet to be fixed.

Best

--_000_0FAFDAAFDEAD4419A147D752A35EA67Bmillerthomasde_
Content-Type: text/html; charset="us-ascii"
Content-ID: <76C55ED789276841BD290AFA49052530@EURP190.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; line-br=
eak: after-white-space;">
<p class=3D"sub_section_element_selectors" style=3D"font-size: 16px; box-si=
zing: border-box; margin: 0px 0px 8px; caret-color: rgb(38, 38, 38); color:=
 rgb(38, 38, 38); font-family: intel-clear;">
<span class=3D"sub_section_element_selectors" style=3D"box-sizing: border-b=
ox;">Hello,</span></p>
<p class=3D"sub_section_element_selectors" style=3D"font-size: 16px; box-si=
zing: border-box; margin: 0px 0px 8px; caret-color: rgb(38, 38, 38); color:=
 rgb(38, 38, 38); font-family: intel-clear;">
&nbsp;</p>
<p class=3D"sub_section_element_selectors" style=3D"font-size: 16px; box-si=
zing: border-box; margin: 0px 0px 8px; caret-color: rgb(38, 38, 38); color:=
 rgb(38, 38, 38); font-family: intel-clear;">
<span class=3D"sub_section_element_selectors" style=3D"box-sizing: border-b=
ox;">I've noticed that there's a bug in the Ubuntu 24.04 Linux kernel drive=
r in for the I226-V ethernet controller. The device crashes, when a user tr=
ies to utilize power management capabilities
 of the hardware.</span></p>
<p class=3D"sub_section_element_selectors" style=3D"font-size: 16px; box-si=
zing: border-box; margin: 0px 0px 8px; caret-color: rgb(38, 38, 38); color:=
 rgb(38, 38, 38); font-family: intel-clear;">
<span class=3D"sub_section_element_selectors" style=3D"box-sizing: border-b=
ox;">The devs of popular power management tool powertop has also&nbsp;</spa=
n><a href=3D"https://github.com/fenrus75/powertop/issues/143" target=3D"_se=
lf" rel=3D"nofollow noopener noreferrer" class=3D"sub_section_element_selec=
tors" style=3D"box-sizing: border-box; color: rgb(0, 104, 181); border-bott=
om-width: 1px; border-bottom-style: dashed; border-bottom-color: rgb(0, 104=
, 181); padding-bottom: 0px; text-decoration: none !important;"><span class=
=3D"sub_section_element_selectors" style=3D"box-sizing: border-box;">acknow=
ledged
 this bug on Github</span></a><span class=3D"sub_section_element_selectors"=
 style=3D"box-sizing: border-box;">. Same for the manufacture of the Odroid=
 H4 devices.</span></p>
<p class=3D"sub_section_element_selectors" style=3D"font-size: 16px; box-si=
zing: border-box; margin: 0px 0px 8px; caret-color: rgb(38, 38, 38); color:=
 rgb(38, 38, 38); font-family: intel-clear;">
<span class=3D"sub_section_element_selectors" style=3D"box-sizing: border-b=
ox;">There's an open&nbsp;</span><a href=3D"https://bugzilla.kernel.org/sho=
w_bug.cgi?id=3D218499" target=3D"_self" rel=3D"nofollow noopener noreferrer=
" class=3D"sub_section_element_selectors" style=3D"box-sizing: border-box; =
color: rgb(0, 104, 181); border-bottom-width: 1px; border-bottom-style: das=
hed; border-bottom-color: rgb(0, 104, 181); padding-bottom: 0px; text-decor=
ation: none !important;"><span class=3D"sub_section_element_selectors" styl=
e=3D"box-sizing: border-box;">bug
 report</span></a><span class=3D"sub_section_element_selectors" style=3D"bo=
x-sizing: border-box;">&nbsp;from February 2024 over on Bugzilla referring =
to the same issue, but it has yet to be fixed.&nbsp;</span></p>
<p class=3D"sub_section_element_selectors" style=3D"font-size: 16px; box-si=
zing: border-box; margin: 0px 0px 8px; caret-color: rgb(38, 38, 38); color:=
 rgb(38, 38, 38); font-family: intel-clear;">
<br style=3D"box-sizing: border-box;">
<span class=3D"sub_section_element_selectors" style=3D"box-sizing: border-b=
ox;">Best</span></p>
</body>
</html>

--_000_0FAFDAAFDEAD4419A147D752A35EA67Bmillerthomasde_--
