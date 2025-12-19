Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFE8CCEB59
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 08:05:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 898F9402FA;
	Fri, 19 Dec 2025 07:05:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jkwGP3eJa_x4; Fri, 19 Dec 2025 07:05:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DD6F402D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766127945;
	bh=xE25zDQdA6GLeQhRcJJyh5sBE7CVXfR19iMBc3ANXTk=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=ktIhJAtA9bKYBpEnzfE3QnNLZKHTshI/AMsn7eqB0Z/PXEELZ2hhjexYEeStdaHd2
	 UsIxAYC9r3k4pzXf2aBJbbiUb5CI4s9rUzb6YXtT4yOBv87jEeCZdLS0Li2c2YDmaU
	 wNhjdOft9KPmv7vHkxbqC2wA1wOrcJ3O7VHD+Y6+9+t4oL1xO/vDrxNFIvAlNHZ4D5
	 0XG0X847jxQsFJapU95HjM709+0W8WpSRYbVxuwY/EzbID+s96x+l5p2WgCzuFWd1Z
	 XrWm4413FrpDRAfAgj+k3+Co9QcPvqQMou0MucOwa/nGC4KtP3dCm8HnIEc9HNozFB
	 tVau8xqSzB74A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DD6F402D7;
	Fri, 19 Dec 2025 07:05:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 28801293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 07:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A9A3402B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 07:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQPMVSVsZjRI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 07:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.84.8;
 helo=db3pr0202cu003.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A8B964020C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8B964020C
Received: from DB3PR0202CU003.outbound.protection.outlook.com
 (mail-northeuropeazon11010008.outbound.protection.outlook.com [52.101.84.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8B964020C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 07:05:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DnAJzuvHyEWEuVYn1yAb0SniPr/EUPl1CNKcvcK0yyQuZanJNl98LwPQqPJt3Ubof/xl1HbUw+JLPlFUqLuQl2Ratvcb7hpm54wAiz0Dz1n54BE6BBE6XOJQRbzCD9LTj7Yx3a7AAh5uskgInetwuVSdxPCSXm2PA1viWgVjUF/x1Jk0rdt3j+CBdxBFqTYhdgN3dVusgVcVk2fXLV2PSHdyRhYoOKErfjp4ARfDHfgEngun03ESRSOkeXOOqItCuphr5yczh2afN5lLGQ7PX5o2OhGzpyOA7QDJZoFpHfOw35mcBgLuIjpHGQgqZL+sPpIo3SVUfAkjK7UsEN6RCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xE25zDQdA6GLeQhRcJJyh5sBE7CVXfR19iMBc3ANXTk=;
 b=J+Mhb1bO9qQV9a63Vbjr+MA02MJMV6Q01vmmPcVW3HhAtbUwHZeGj9crJAjhNz6QhfO68D6PFXQyKTgV7pbQuuSQv4B+rkZSc50CSA9ef4Z4d/9znUfEuiKuNTvzDNxrpCN4OD7Es1fHY7rZbqdBSqCi3yyyqhM+WlHevoChu75MtxL6HnRGKGz/Km0mTeYf7rPALe/HrUAJK8G6w1dtW+xAzqQSozAhMOwnAXnizY2iOplutVxzUwoTG1jte4u7+qhhJuHtfiyrComdGk8YsVnkWzogPsSRHJtDygO99SKvx2mXsN/qhv7WGCll8WQC6ZsVXo02hR8nNkk82U/tJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by DU0PR10MB6225.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3ec::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 07:05:38 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef%6]) with mapi id 15.20.9434.001; Fri, 19 Dec 2025
 07:05:38 +0000
To: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v2] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcbbnPqe0jZadJXkuf5e+GzC20xLUoj2kw
Date: Fri, 19 Dec 2025 07:05:38 +0000
Message-ID: <DU0PR10MB538764D2C70EACED000EE3088FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20251215115416.410619-1-vivek.behera@siemens.com>
In-Reply-To: <20251215115416.410619-1-vivek.behera@siemens.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=e8ee8770-2bba-4f09-ad9d-93d1003eda9a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-19T07:02:26Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|DU0PR10MB6225:EE_
x-ms-office365-filtering-correlation-id: 050f76f1-fe68-4ae3-3698-08de3ecd03dd
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5TK8h7QY40vkyn6RCNf2ByZC/jnGJ9WwhaGWdhlkQGKp4P5UvqpJ8W2HUEjm?=
 =?us-ascii?Q?1ZH1uHNm05RsxKz0mltSzrwbo1S5u/qMjJ+um+XOMpOYmrlCrHD4Cl4jvu6+?=
 =?us-ascii?Q?i40d+g/IT3MXCLxx4HKmbQO2tSBonDEwBmGH/zlC8IiuwkAdvblOdpiHK0oI?=
 =?us-ascii?Q?5K3rbWw4+EZs4jtZOCjDJg4aquY+OCdotwjGJGK0zZjsqf+ynjjVWq7uodI0?=
 =?us-ascii?Q?f1rhJNoBKVYVtW2HvqwL/PBB14qceJqJlGZIeZKwzK8QYDIL+rr4xeX/U+pw?=
 =?us-ascii?Q?4yB7d++iKGwuZwZIlOTucnDH7ZmhwnIC13oIRvefyfjwxNmm8hrPGlB+BZrw?=
 =?us-ascii?Q?97UzcwNpAzvokiPEJE9ccP8Z2dyZDT/4H5XEX5MdNDXb4QpTop9v+8zo5yj8?=
 =?us-ascii?Q?B5Ab2+yB6knQUOGz0vAuQEKlLJsVGpiybb7wBvFP8ASo7ajrvJgZxdJfK1Zt?=
 =?us-ascii?Q?m/838U/elolOEW+QBE0JY/IcGKVAdXzSAnUhJzm4kENpdGcLcxKgToygQG5R?=
 =?us-ascii?Q?0vd5OrcwSwwnNp88dzr3Fl44XwqBqhdb7BCdS0q0hIIiRCMlkuGRMUo2lvo2?=
 =?us-ascii?Q?4qZTwGc1raCxQzkK7lIJLNNhBwNUn6ZhDe5/zOwoOqQr0iSWgwIQGXiH8/gv?=
 =?us-ascii?Q?VYy67yInrtxv7O4a5eqntyCrK0PUwGS7OWmlldkTEuHSnVnmwpnPY+21gPtg?=
 =?us-ascii?Q?Gk/9W9RsxbO0Y9m9PZ67FbNdhC8wrFfrKA/Ys3F8A4DQURwgojTtnuuLddf5?=
 =?us-ascii?Q?Bpkz5qRzDqxmRv/ykF6yhF1oP+MHnisjVFnX0kmZfO4DnmKIVEOXkF+Juk0Z?=
 =?us-ascii?Q?8BwfywczmqCJVeNEIdY82ZRkX/7gAV6AGf0hmAAIlzOPWaFH7c7m9NlX18Rn?=
 =?us-ascii?Q?5QhJNUFD4SY8rOLHyDn2JbIpra5h1d6GIocNco7TvNI+aEb8Ks+4pUI+1WGq?=
 =?us-ascii?Q?5Em0Htvc1+kf9zANWqtkJDvrIYQyYXXzGU2AsDkfJnLWh9UpJD2kfLjDgxKh?=
 =?us-ascii?Q?2DT9XPU/kdp/iqrIzG6t1AzNjXqwJkblxpy/kcJETAn9c+PXWqWnRfXfdDTC?=
 =?us-ascii?Q?HftangiLJR2BJxFDIp6MwlebPSwxHbRpxF71Yh3FCoTPGTgVrmgF/nlaEAa+?=
 =?us-ascii?Q?UgfLulb7rpGDuFlCvsQjXGCqcgme07YYH/olTtVEO7iTqqxffe7cGTwbLigJ?=
 =?us-ascii?Q?gxynxpr5I4obqFivZcvqJQaPH8HzgQ2nGYtLSyh1G52fSTBR849ea944PpGU?=
 =?us-ascii?Q?83VWeoorHMzSvDfTCUTshRma2N89RM7fOXQTmP5USqo+4ychodzOpc/EBnPy?=
 =?us-ascii?Q?vcCSKVgrG5Z/qn7aqjxoREj+kPo+C4F73Qux+gJfXqCIhI9xSxg7K1Ksq2n+?=
 =?us-ascii?Q?9V+NeJkIF8OoWDMZiTGesNtGH5V/NiWZRmL0P21ujm/Ht40TndHMglhe/HHX?=
 =?us-ascii?Q?tQI/SNGEcb1Ix5cuWXOgWAzVS45JyXaE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sT8nBBkvlkaYNPq/edAkU9sOd8sVvUtMb/HkU1lhbZlLzKTpY3ibITdXstJ5?=
 =?us-ascii?Q?kDAC9JrPb6usLXbYkENURYv/K2U9WfOGlz8Ep6L/EPtUSvL9mhDMiXzMQYMs?=
 =?us-ascii?Q?ONs2FlRU7UTIxD3AXll4VdbWw7ywYYG5kdL5ohYuNWplvlka0t+Z7Cs+zVEg?=
 =?us-ascii?Q?qiYCOY8Xj3KSy0tRvjVgoLcKzZCSJnO6mZPJCMds0TaiQrExZDecl+0HyJjM?=
 =?us-ascii?Q?P377vwiMgIThj18LjvzW/5zajKP/tSrAkFqQ1bbNWnkDDcNOSN2Hxsx/1EbN?=
 =?us-ascii?Q?nQjg1oGadKaxMBN9P30+D5qhuLHGqP0iM6grvuO+U3RXs4lf1lbW/WJiR1yk?=
 =?us-ascii?Q?h/GX/7GXrzZpzlZnimzGFUdVsSa2Io0yaF8dxyeQTg45NdtyCvB/tN1VTT6g?=
 =?us-ascii?Q?PfM2URH1jHGS+nu9Tj2nABZLbL/DDa8nm5/vlsBJJz7Jfn4hOjulV7D10EE+?=
 =?us-ascii?Q?7YnT4ejk6kfBsSvMc8yBNGtkWs685S3Z9M16xEl9RhtvDdLvXHk4LnDUrf59?=
 =?us-ascii?Q?zka/9mLBXXUxopn2EhGF8x3bs6vRMWMmiP41Kh0r0jSQuZv7pImusomCsVXc?=
 =?us-ascii?Q?XiXvYN6q9n/VUOxxraEqQ6FP9p18xIUYFWTsrEm33LzaFj5ZhX2EXj8U1SFJ?=
 =?us-ascii?Q?8esb144fBQeQ1sKG2DYilf18w9jPnvkFaFIGEphwLWu/IscB9F5IRtnjF5o2?=
 =?us-ascii?Q?JZZYWfBUT8BvV77TXNOlVeYKK43u09Ck2wlRL4MCVWYo9jb510ESyGg8bcy7?=
 =?us-ascii?Q?IhJYsQAXIGLgjnb0cqmEN0ZLdhl66YIzKoOGw8WjfhdDnTg73sgfDJT+U3YG?=
 =?us-ascii?Q?4vpJ7NYIYvujp1U3zM+AVtxDppS9Mz5v8QMNEcl8bv61p980IjN2zOU0fdAs?=
 =?us-ascii?Q?C/mW42brxeHogFwCFIOnNpCx1FLoSV/ftrq0p6iuwcYV2+FRPLv2DWbLsTom?=
 =?us-ascii?Q?uDMJ/zBv/iWGB7u1y6GEUtsGYZvp+H83fEzVWJ8nOhQVCNB3TfJ+Zf/PSRyS?=
 =?us-ascii?Q?R1XIBb0VmdNfaJ932C9xVAlrp5JMUTKSV+m34hWeLr7SX6WpqeQ3y0RisOs7?=
 =?us-ascii?Q?++pm67hPtjX/nfgfGVfGlBQu8VRJVJ+nr5COcMC3MXy7zWweZVD2tVthLVzE?=
 =?us-ascii?Q?yIwrP2idX3Ai66jPyAIQbtm53k9sRAJbyjqAG2GBUi/p+BTRcj9StgkLy7oL?=
 =?us-ascii?Q?z50nv31yjbwMyMNzgzmbwJJZTy2KZryqJuzZioDMVW6Vbn5s+try3IZ8zg8k?=
 =?us-ascii?Q?VzcckhJ/6p9G10/qqFE89k2y5VPAFqCXc6c11pu5g0HlKWwa20Yq/46zEm8M?=
 =?us-ascii?Q?loIhFF95Q+ABqBXeB8dEZizcAsR5m8eJwwCBSgdGZyV76ssQia4RhTpnLbvA?=
 =?us-ascii?Q?R6xwCYbW0iRRJKzfOus9zJgvBcV3YEUKQkkwKf6AV6+eAG0A1B+Iw1vtsf03?=
 =?us-ascii?Q?WkrstJ8fgaFVGqtpNwOu/BBkO7AS1rwK5Cq7gAVDT6hfd9boXlm18skxpQ49?=
 =?us-ascii?Q?pz6PzeYY52xrFBzRp+SZsKPL277YOI7T+4/esr00kpD05PoJSBAMMVV4RkJC?=
 =?us-ascii?Q?GDFLkQW3kw6xPKz8oTX6eAuFU2y8LSTeB4IxZkhq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 050f76f1-fe68-4ae3-3698-08de3ecd03dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2025 07:05:38.6957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wiiPprpaWxM1MuftsvTK3cLhrFIYsPIVBwBimB6yrqigG5ct+hgcWj+rhRC0qkWvyda8+miOeeVrTy3hAtFsa+BOvsI95Kruk0uYe0O7bw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6225
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xE25zDQdA6GLeQhRcJJyh5sBE7CVXfR19iMBc3ANXTk=;
 b=UL2KtmLZp1RJSO/Gi6p8nVI+QhIGo4DCee+5RE1Q9M1wfgDfbIPh04fiiBoFpKiJjby6HHCMgATH5D6wroejRW7z4gKBsAdIVikO1vQH+LQZ6rhdUu0SjXkySQPMWVgukpGqiXqx2Gtcn1zy4TR6eF+A760xYgH76dugBnKMdJpaQiYoCiNaxFTJCf6j6QN6qwmG9QpBjppGUs61twY/FN4BuS0f/Bo5gMTK1G4bgFROXBmOODczkto5csjl3fb/hnBV/mpvWtx4Se8lNX1ODs3JZ6hhjp6DCo3qxm4maix6VdRaRrVIWd9eYbrnH8hcVffdf970aKoJnPy7KhHzZw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=UL2KtmLZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Sent: Monday, December 15, 2025 12:54 PM
> To: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> maciej.fijalkowski@intel.com; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC PRC1)
> <vivek.behera@siemens.com>
> Subject: [PATCH iwl-net v2] igb: Fix trigger of incorrect irq in igb_xsk_=
wakeup
>
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx qu=
eues
> to share the same irq. This would lead to triggering of incorrect irq in =
split irq
> configuration.
> This patch addresses this issue which could impact environments with 2 ac=
tive
> cpu cores or when the number of queues is reduced to 2 or less
>
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  4-edge      eno2-tx-1
>
> Furthermore it uses the flags input argument to trigger either rx, tx or =
both rx and
> tx irqs as specified in the ndo_xsk_wakeup api documentation
>
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
> ---
> v1:
> https://lore.kernel.o/
> rg%2Fintel-wired-lan%2F20251212131454.124116-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens
> .com%7C1199ec6c63494235f90408de3bd0eefa%7C38ae3bcd95794fd4addab42e1
> 495d55a%7C1%7C0%7C639013965726377756%7CUnknown%7CTWFpbGZsb3d8
> eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DuTarFq1Uj3h0H1aZeN
> 06HWf0ts3BsMJkfPq9pPBegrI%3D&reserved=3D0
>
> changelog:
> v1
> - Inital description of the Bug and fixes made in the patch
>
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configur=
ation
> - Review by Aleksander: Modified sequence to complete all error checks fo=
r rx
> and tx
>   before updating napi states and triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use =
case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
> ---
>  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>  drivers/net/ethernet/intel/igb/igb_xsk.c      | 98 +++++++++++++++++--
>  2 files changed, 92 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index fa028928482f..9357564a2d58 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -443,6 +443,7 @@
>  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
>  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshol=
d
> */
>  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted =
*/
> +#define E1000_ICS_TXDW      E1000_ICR_TXDW   /* Transmit desc written
> back */
>
>  /* Extended Interrupt Cause Set */
>  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/i=
gb/igb_xsk.c
> index 30ce5fbb5b77..d146ab629ef0 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u=
32
> flags)
>       struct igb_adapter *adapter =3D netdev_priv(dev);
>       struct e1000_hw *hw =3D &adapter->hw;
>       struct igb_ring *ring;
> +     struct igb_q_vector *q_vector;
>       u32 eics =3D 0;
>
>       if (test_bit(__IGB_DOWN, &adapter->state)) @@ -537,13 +538,91 @@
> int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>       if (!igb_xdp_is_enabled(adapter))
>               return -EINVAL;
>
> -     if (qid >=3D adapter->num_tx_queues)
> +     if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> +             /* If both TX and RX need to be woken up */
> +             /* check if queue pairs are active. */
> +             if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> +                     /* Extract ring params from Rx. */
> +                     if (qid >=3D adapter->num_rx_queues)
> +                             return -EINVAL;
> +                     ring =3D adapter->rx_ring[qid];
> +             } else {
> +                     /* Two irqs for Rx AND Tx need to be triggered */
> +                     u32 eics_tx =3D 0;
> +                     u32 eics_rx =3D 0;
> +                     struct napi_struct *rx_napi;
> +                     struct napi_struct *tx_napi;
> +                     bool trigger_irq_tx =3D false;
> +                     bool trigger_irq_rx =3D false;
> +
> +                     if (qid >=3D adapter->num_rx_queues)
> +                             return -EINVAL;
> +
> +                     if (qid >=3D adapter->num_tx_queues)
> +                             return -EINVAL;
> +
> +                     /* IRQ trigger preparation for Rx */
> +                     ring =3D adapter->rx_ring[qid];
> +                     if (!ring->xsk_pool)
> +                             return -ENXIO;
> +                     q_vector =3D ring->q_vector;
> +                     rx_napi  =3D &q_vector->napi;
> +                     /* Extend the BIT mask for eics */
> +                     eics_rx |=3D ring->q_vector->eims_value;
> +
> +                     /* IRQ trigger preparation for Tx */
> +                     ring =3D adapter->tx_ring[qid];
> +                     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> >flags))
> +                             return -ENETDOWN;
> +
> +                     if (!ring->xsk_pool)
> +                             return -ENXIO;
> +                     q_vector =3D ring->q_vector;
> +                     tx_napi  =3D &q_vector->napi;
> +                     /* Extend the BIT mask for eics */
> +                     eics_tx |=3D ring->q_vector->eims_value;
> +
> +                     /* Check and update napi states for rx and tx */
> +                     if (!napi_if_scheduled_mark_missed(rx_napi)) {
> +                             trigger_irq_rx =3D true;
> +                             eics |=3D eics_rx;
> +                     }
> +                     if (!napi_if_scheduled_mark_missed(tx_napi)) {
> +                             trigger_irq_tx =3D true;
> +                             eics |=3D eics_tx;
> +                     }
> +                     /* Now we trigger the required irqs for Rx and Tx *=
/
> +                     if ((trigger_irq_rx) || (trigger_irq_tx)) {
> +                             if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> +                                     eics |=3D ring->q_vector->eims_valu=
e;
> +                                     wr32(E1000_EICS, eics);
> +                             } else {
> +                                     if ((trigger_irq_rx) && (trigger_ir=
q_tx))
> +                                             wr32(E1000_ICS,
> E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> +                                     else if (trigger_irq_rx)
> +                                             wr32(E1000_ICS,
> E1000_ICS_RXDMT0);
> +                                     else
> +                                             wr32(E1000_ICS,
> E1000_ICS_TXDW);
> +                             }
> +                     }
> +                     return 0;
> +             }
> +     } else if (flags & XDP_WAKEUP_TX) {
> +             if (qid >=3D adapter->num_tx_queues)
> +                     return -EINVAL;
> +             /* Get the ring params from Tx */
> +             ring =3D adapter->tx_ring[qid];
> +             if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +                     return -ENETDOWN;
> +     } else if (flags & XDP_WAKEUP_RX) {
> +             if (qid >=3D adapter->num_rx_queues)
> +                     return -EINVAL;
> +             /* Get the ring params from Rx */
> +             ring =3D adapter->rx_ring[qid];
> +     } else {
> +             /* Invalid Flags */
>               return -EINVAL;
> -
> -     ring =3D adapter->tx_ring[qid];
> -
> -     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -             return -ENETDOWN;
> +     }
>
>       if (!READ_ONCE(ring->xsk_pool))
>               return -EINVAL;
> @@ -554,7 +633,12 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,
> u32 flags)
>                       eics |=3D ring->q_vector->eims_value;
>                       wr32(E1000_EICS, eics);
>               } else {
> -                     wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +                     if ((flags & XDP_WAKEUP_RX) && (flags &
> XDP_WAKEUP_TX))
> +                             wr32(E1000_ICS, E1000_ICS_RXDMT0 |
> E1000_ICS_TXDW);
> +                     else if (flags & XDP_WAKEUP_RX)
> +                             wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +                     else
> +                             wr32(E1000_ICS, E1000_ICS_TXDW);
>               }
>       }
>
> --
> 2.34.1

Hi Intel Colleagues,

Would you be submitting this patch to netdev list after your internal valid=
ation just like the igc patch?

Regards

Vivek
