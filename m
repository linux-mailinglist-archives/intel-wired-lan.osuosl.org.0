Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id croTCLcjLGp5MAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 17:20:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B2A67A7CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 17:20:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=O5ExZ17L;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E458D827AA;
	Fri, 12 Jun 2026 15:20:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u1WTDCT4923P; Fri, 12 Jun 2026 15:20:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 474048222B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781277618;
	bh=QytjxXE3p+h6s0RjK8LtABG9v8dWiksMQKmIxEnz+ic=;
	h=To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=O5ExZ17LFEgu8ncJPItm8WAU2uHOKx7nWOxrKekn6/scv+7qhZSB8McdYlWmRuCfM
	 B+EUDAJOTstxwwIz7xgs3wW5QebYNuaaLkhoIqC+38Pv5923aE+tb5TeMyL0ttwz5G
	 TtGfPx6TgK/8NblRTEfB87aHkeElTNMG2M1WhG3vSj6E9uCwzBfBahNGPp50+9GI2r
	 X76p6DS3CLdDPQPRJW2p5QsZ3SGJWTMyX96RDOqk5Ev6Gx1xPjilHP0NNpRa8Pr7tp
	 nR+s0mKvmvVTKEeUKqzqqt7EQbhanakO2n7nk0naY/ZfjiJqjaKw1VAF3LcqyAbnUs
	 pWTjNi+0kxQIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 474048222B;
	Fri, 12 Jun 2026 15:20:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BE7DF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D5CF410D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IOolofyc5Y3U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2026 08:05:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.83.85;
 helo=gvxpr05cu001.outbound.protection.outlook.com;
 envelope-from=tkusters@aweta.nl; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F3AC540F60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3AC540F60
Received: from GVXPR05CU001.outbound.protection.outlook.com
 (mail-swedencentralazon11023085.outbound.protection.outlook.com
 [52.101.83.85])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3AC540F60
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:05:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+AKRCrPh+GbhHlUCGr5buB63R/hmu0eGX+NNSz/iWu+aQDqsupo7bfD0wrLDHF5eNi/0sjXL7vbExH5xIekc7jrrqTfI+tsms+tCQq4ixXq8X/S0UpqkmhYXfbcbWG8JdB/uVCYpefN5obZU/YO07FhNge7xbvvQ7C+vhNn0Bs9s4eQ0KXs0KDz6AxlKNgvTJDmRsODFbQ1TM2spByU4JXh0g+3QigTvlEtQTmIu2DmfXGU/Jt/xqf39jgRaYnOTD1X6QnBUuiLL13hk9plW1//WRJlzZXtYDFiWD/QvQN8rAjeDIEHs2xWNs2qroCQ64qHc44AqAHu73PuKgxA4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3WLoqkTttmk7ofA9+AxoDFk/iRiNSxakmPR3xZeg2Yk=;
 b=bCPCqzfhTq6hVt1ke5Q2oEg/pbkeGV2lX4PmEnfmiT4NleaFSA99/EE7n1R5rEfa8yJ+Ai2iXb3gN/VULShFVPwvyPZkd4/VOXf2LkSGJKWPUoaKpsRB1cC7Ro+OSa6a1Lp/WI62HZQFEp4QJepr6HmVimosWWVuGebwSGGzof8n1E68LPQaiBjK6AnDvLilNdZ2eYBfvsnE0XRgBwF7SKV4lvUZeM+VIVzrFqA9KF1m5VVpNozjroO+LZS7FIPkukf5SnB2W4bGt5v0KTHkus7kBbJdOfJOse3FGYMXTCYTrMQBBQ6/RB0CEOLBmeQwevQy4tNHJ9T0m1EHjw7cQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aweta.nl; dmarc=pass action=none header.from=aweta.nl;
 dkim=pass header.d=aweta.nl; arc=none
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com (2603:10a6:102:35a::6)
 by AM0PR05MB12451.eurprd05.prod.outlook.com (2603:10a6:20b:747::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Fri, 12 Jun
 2026 08:05:19 +0000
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754]) by PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754%6]) with mapi id 15.21.0092.016; Fri, 12 Jun 2026
 08:05:19 +0000
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "kurt@linutronix.de"
 <kurt@linutronix.de>, "hawk@kernel.org" <hawk@kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH net] igb: only strip Rx timestamp header on the first
 buffer of a frame
Thread-Index: Adz6QcrRn2ovfM6lTRK8EOoivUdfWA==
Date: Fri, 12 Jun 2026 08:05:19 +0000
Message-ID: <PAWPR05MB1069106D52F4E17F1EDB99C67B9182@PAWPR05MB10691.eurprd05.prod.outlook.com>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWPR05MB10691:EE_|AM0PR05MB12451:EE_
x-ms-office365-filtering-correlation-id: 155e880e-16a2-4bc0-27d0-08dec8595844
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|6049299003|1800799024|7416014|376014|366016|6133799003|56012099006|18002099003|38070700021|4053099003;
x-microsoft-antispam-message-info: aJBjNDbalGSTEBuhnw6SQ15+EW8AArDxz8tJGFrmUoE1oq24wIuXyAQKLr901RzjwGzupu1BKIyEYQzcPpnvIDK/lTGV+2xC3gXTXR4/gMqZGzpio/62zCAWJ28aAr9Eqjps/PBRk6cFkDWvohGgMZ7lZkvmzMm8EfrOmc1GvfU8lW8gxCGE27dm1YHzNPD3POQBVxW52JedUJZlyoMJ03TCwPPVHosZblfsenN44dWXAXK8/0QeFbERGvu6FNVxF4u12DHm5dRIYCHPpB9WaUEGRf6xchJrAZ609tkb+eEetErAvxJtVcjlR1JfQ1SM+EukdLdfvfdeMrwXNe0xyPyhW87uPLW+5t6pIJ4qlE1+dHgxuvNXU+DLy/xXrUI4MKU7OSnuvigDdB6EX3pNJl7yQrhM2e2nfg2Ce6MZo7d4ye82eU1NUT7sB74CN/v0k3w0Igff4swnZa/j80N8LOJQSc9zCrHubybuP2d3ZSWJcpgrR7dqrA9vJJMeIQkAxM0edlGgp9vPnbToU4ozFWp+UkGJsjmVbyLCFCSON4i8KquhGKa9VDit+S59da43sShdf4/J0QKNLh1VH+4imyTmCNrPdmtsvKLUGR3fob8FC8oSvccuwuk9Tn/iAteW73uxqcC/4B7MMDaQtyHqdbwCBnNrlaqdRHaaL2nc72Dao39Uw2x6qckIp+TsFvo6O2xivNqdym/epqjLNc73aLayPReJuPXgxSiJK2XOweH0KSicZYm1Up95H6DQ2K1L
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAWPR05MB10691.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(6049299003)(1800799024)(7416014)(376014)(366016)(6133799003)(56012099006)(18002099003)(38070700021)(4053099003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VUcsAK8siNs4D5vdchhOA4FgjZiIcTKXve8RtPYjXbIKGmKidFgauo8kYYfD?=
 =?us-ascii?Q?ljrL82SZGTD8g5038ArVXEb8fVSqhsPUNNjpiNmwpg38vvHLtsuFYA/iQ95x?=
 =?us-ascii?Q?nx7DAbOS9sByCKUEjchAOBF//OKdwAvnWY9HfNPoa2zlB7HVKoxdyuCzhtmb?=
 =?us-ascii?Q?LYNvhnq6dawicC1mYQyMD27xEKbkQExMM6fVUDN/WY966ormzQman0TyMUey?=
 =?us-ascii?Q?GMfvl8476jGC9Y8fR2bYvEmwNLRv8uAm2uIwofFsoSPgYuEK2WpGhr+Zd+Z7?=
 =?us-ascii?Q?Ms/2qXU6xP7Phxra6bRsZSPox+Z3Kn6td0IrFqd3SiPTwU1pf0+62H7gDb7C?=
 =?us-ascii?Q?eTde/BIVEuyHjueuepMj9FTY4o22dzrCjqiQ56wSCSkAuU4qX2o06dBvTHyN?=
 =?us-ascii?Q?4ydmSwLu7eD1lTLfKeB6Ha6rOXynfk+cGyceu0bk965ttVyS5PiUXewSBk2f?=
 =?us-ascii?Q?H2E/zKttm73PYQ+hCAclLodo9FPO7OUD3kb9oYyOD+1enuUN1kNAeyzk4Kru?=
 =?us-ascii?Q?rkMgSHmHqM5OLvZcxHvfNa8GbmHwFVBRi7mc3sV4SiKqtS7coXEe8AGVs9wY?=
 =?us-ascii?Q?K01T4+3ArUsji8fT4PHYD1gqumD7/mYmKqHNLkG8zJq+tpLB+VdqBHqNuedw?=
 =?us-ascii?Q?nAMcuLOXaBFFTdxgRCTV5z6e0dr0vlqmSJ4Im2uEpr/509FOvS5/bU7OvFDp?=
 =?us-ascii?Q?vbOHUqLfm4DneDlx/LkXmXaE82MQxzQjt8yoWHGotlW6X2U5eDTGMMIKWOzg?=
 =?us-ascii?Q?QyTiE+/12Pz6NZGkJkxLEcSLL4x0040Cnzzv8VYalxZLnrNIJFxHTDJ+So+6?=
 =?us-ascii?Q?voFZaPzxzjlLlBrE8H7og2Ua2Jh05h+IgnX8auKs3dWZvcVp87X5Z4Vbwhae?=
 =?us-ascii?Q?3b4Vhdfmhk5iLMjgnMlz9qd2fTnn/XyktPqY0BBo8catPhTiz2bbx3L+j/1J?=
 =?us-ascii?Q?sa4GVe7AfOPtdVJ9LO538jS6GALKwEb7OKcgYy4OQIdBo0QjWiEmoBffm8cG?=
 =?us-ascii?Q?+vWJPTdPDMGKcEa9Y/o800V8epb3cxImIk/m1qsLd50ePIUp5Pyw5RIwmiOt?=
 =?us-ascii?Q?plM5zYoqiKA8F4haboYVk/mJrR6qNK8SOEwBcqjSqpJgOF+zyEi3voMX3eOn?=
 =?us-ascii?Q?O3SuZ5OWg7g9a46f8T+34LOubdXnyn1P0P/f1XSIwT7t3YrLKkKsxUvdB4wr?=
 =?us-ascii?Q?ROQ4KoYT+I+MFPJMhAwvR353rvJNn2d1CePBi8Qj1+Dq8BnKJt8Q1k0aofvX?=
 =?us-ascii?Q?YZECUv7leZubPAi/rJcJ6uAvrquppTR7u2Yg/EtNYZGJwqpY2gDkDE49+Qkd?=
 =?us-ascii?Q?65Dpwfk7w8Pio0ZqXHcmFYQRwP5tnOtnJbl4oo/qnMoRQBYZOWMrNZemd9Sb?=
 =?us-ascii?Q?b5wxu1/yHGftBSbHpx9fqdMpoivQoacdjbNKdZzHoPoLrMN2lItLBYpB353s?=
 =?us-ascii?Q?0MCDyEZ1BJGFY6GSVWhIEeLeRymlTT4os4o/c7kqndc+gEvR13R1xHWBSZtL?=
 =?us-ascii?Q?XYY387GkMX2PwhOEmPfclkMH3aKsuw9Mc3FVynE+hgJIjHkT5Y4sEIqzwC3f?=
 =?us-ascii?Q?dXR/Wzt0UGMSb2YEi/6zbtvY7hIGTstR1dKuMbhaiLKs2U4uZi83RgSGpEcm?=
 =?us-ascii?Q?KOlX8kyDQ0lxKwjw4NlmM6o55/YP5gtmTGyP4D5tQkZVf4TbrJMjzqYA3x4H?=
 =?us-ascii?Q?RhKvecEbp80KA3UGLin3aWfVnQQpg0G1KosBc641Jm2QSFB8?=
Content-Type: multipart/mixed;
 boundary="_002_PAWPR05MB1069106D52F4E17F1EDB99C67B9182PAWPR05MB10691eu_"
MIME-Version: 1.0
X-OriginatorOrg: aweta.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWPR05MB10691.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 155e880e-16a2-4bc0-27d0-08dec8595844
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 08:05:19.0938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6546512a-ba20-41bf-9d8d-c076dcbf6fd9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R9cNcuj7z27/SbILQ+y0JzZ0XA4JswxsPlksvldvL713FY3I6QnrzKUWm769c5i1dGGbAxctGwoDPseND6C1PA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB12451
X-Mailman-Approved-At: Fri, 12 Jun 2026 15:20:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aweta.nl; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3WLoqkTttmk7ofA9+AxoDFk/iRiNSxakmPR3xZeg2Yk=;
 b=f8Kt5SH6lTWilRdYgYpbAXQzEv12QrAT8B7IkuVOz/miKEL+1ks1+7sfbGaLRQZvZBM8vqf2cfFJjnuymbRT6wccXVNsSNLjCVchAi4cOKzbYT8bA+qdXWGHgAKwMwA/6KB89Xse6MLOz2U7XDDm4ui6mf+0j5htH0J1/LQ1dL3sgaV5HwHgeS0v+nYui9vmoZVmYVQcbjvpDpjfhbP80ZEEyHvTOYM0FoAaIb8g7NkxClL13LJ7JJvigFblnLW55GQfpTRWhnqARH//J75t1PS0podpwas8JiJ41VKsZHJDP9Z6aZITkfTBD6bZZW2ZcpopHOUZJtwksB7J+zQYyA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=aweta.nl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=aweta.nl header.i=@aweta.nl header.a=rsa-sha256
 header.s=selector1 header.b=f8Kt5SH6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aweta.nl;
Subject: [Intel-wired-lan] [PATCH net] igb: only strip Rx timestamp header
 on the first buffer of a frame
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
From: Tjerk Kusters via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Tjerk Kusters <tkusters@aweta.nl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:kurt@linutronix.de,m:hawk@kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linutronix.de,vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_REPLYTO(0.00)[tkusters@aweta.nl];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	HAS_ATTACHMENT(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 92B2A67A7CD

--_002_PAWPR05MB1069106D52F4E17F1EDB99C67B9182PAWPR05MB10691eu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

The patch is attached (0001-igb-only-strip-Rx-timestamp-header-on-the-first=
-buff.patch)
as my mail setup cannot send it inline via git send-email; apologies for th=
e
attachment.

Summary of the bug it fixes:

When Rx hardware timestamping is enabled (e.g. ptp4l, which configures
HWTSTAMP_FILTER_ALL), the igb NIC prepends a 16-byte timestamp header to th=
e
first Rx buffer of every received frame. igb_clean_rx_irq() strips this hea=
der
inside its per-buffer loop, so for a frame that spans more than one Rx buff=
er
(a jumbo frame) the strip runs once per buffer.

The timestamp header only exists on the first buffer, but igb_ptp_rx_pktsta=
mp()
is called for every buffer and only checks that PTP is enabled and that the
first 8 bytes (reserved dwords) are zero. On a continuation buffer whose
payload happens to begin with 8 zero bytes, both checks pass, the payload i=
s
mistaken for a timestamp header, and 16 bytes of real data are stripped fro=
m
that buffer. A frame spanning N buffers whose continuation buffers start wi=
th
zero bytes loses 16 * (N - 1) bytes from its tail, silently.

This is easily triggered by a GigE Vision camera streaming dark frames (mos=
tly
0x00 pixel data) over jumbo UDP with PTP active on the receiver: all-zero
frames arrive truncated, frames with non-zero content are fine.

The fix only attempts the strip on the first buffer of a frame (skb =3D=3D =
NULL in
igb_clean_rx_irq), which is the only buffer that can contain a timestamp
header. A content-based check cannot reliably distinguish a continuation
buffer that begins with zero bytes from a real header.

Testing: reproduced on Linux 7.0.11 and 6.14.9 with an Intel I350-T2, MTU 8=
228,
ptp4l active. A random,zero,zero,random burst of 1024 jumbo UDP datagrams
captured on the receiver showed 512 of 1024 truncated (both all-zero bursts=
)
on the stock driver, and 0 truncated with this fix applied. The bug is stil=
l
present in mainline (checked v7.1-rc7).

Fixes: 5379260852b0 ("igb: Fix XDP with PTP enabled")

Thanks,
T Kusters

--_002_PAWPR05MB1069106D52F4E17F1EDB99C67B9182PAWPR05MB10691eu_
Content-Type: text/plain;
	name="0001-igb-only-strip-Rx-timestamp-header-on-the-first-buff.patch.txt"
Content-Description:  0001-igb-only-strip-Rx-timestamp-header-on-the-first-buff.patch.txt
Content-Disposition: attachment;
	filename="0001-igb-only-strip-Rx-timestamp-header-on-the-first-buff.patch.txt";
	size=3266; creation-date="Fri, 12 Jun 2026 08:02:30 GMT";
	modification-date="Fri, 12 Jun 2026 08:05:18 GMT"
Content-Transfer-Encoding: base64

RnJvbSBmZWUzZTM0NTJkZmNkN2UxMDkzMzIzNjk2NzJhM2UwMDkwY2FkZWIzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBUIEt1c3RlcnMgPHRrdXN0ZXJzQGF3ZXRhLm5sPgpEYXRlOiBU
dWUsIDkgSnVuIDIwMjYgMTQ6MDY6MjQgKzAyMDAKU3ViamVjdDogW1BBVENIIG5ldF0gaWdiOiBv
bmx5IHN0cmlwIFJ4IHRpbWVzdGFtcCBoZWFkZXIgb24gdGhlIGZpcnN0IGJ1ZmZlcgogb2YgYSBm
cmFtZQoKV2hlbiBSeCBoYXJkd2FyZSB0aW1lc3RhbXBpbmcgaXMgZW5hYmxlZCAoZS5nLiBwdHA0
bCwgd2hpY2ggY29uZmlndXJlcwpIV1RTVEFNUF9GSUxURVJfQUxMKSwgdGhlIE5JQyBwcmVwZW5k
cyBhIDE2LWJ5dGUgdGltZXN0YW1wIGhlYWRlciB0byB0aGUKZmlyc3QgUnggYnVmZmVyIG9mIGV2
ZXJ5IHJlY2VpdmVkIGZyYW1lLiBpZ2JfY2xlYW5fcnhfaXJxKCkgc3RyaXBzIHRoaXMKaGVhZGVy
IGluc2lkZSBpdHMgcGVyLWJ1ZmZlciBsb29wOgoKCWlmIChpZ2JfdGVzdF9zdGF0ZXJyKHJ4X2Rl
c2MsIEUxMDAwX1JYREFEVl9TVEFUX1RTSVApKSB7CgkJdHNfaGRyX2xlbiA9IGlnYl9wdHBfcnhf
cGt0c3RhbXAocnhfcmluZy0+cV92ZWN0b3IsCgkJCQkJCSBwa3RidWYsICZ0aW1lc3RhbXApOwoJ
CXBrdF9vZmZzZXQgKz0gdHNfaGRyX2xlbjsKCQlzaXplIC09IHRzX2hkcl9sZW47Cgl9CgpGb3Ig
YSBmcmFtZSB0aGF0IHNwYW5zIG1vcmUgdGhhbiBvbmUgUnggYnVmZmVyIChlLmcuIGEganVtYm8g
ZnJhbWUpLCB0aGlzCmJsb2NrIHJ1bnMgb25jZSBwZXIgYnVmZmVyLiBUaGUgdGltZXN0YW1wIGhl
YWRlciBvbmx5IGV4aXN0cyBhdCB0aGUgc3RhcnQKb2YgdGhlIGZpcnN0IGJ1ZmZlciwgYnV0IGln
Yl9wdHBfcnhfcGt0c3RhbXAoKSBpcyBjYWxsZWQgZm9yIGV2ZXJ5IGJ1ZmZlci4KCk9uIGEgY29u
dGludWF0aW9uIGJ1ZmZlciB0aGUgZGF0YSBpcyBwYWNrZXQgcGF5bG9hZCwgbm90IGEgdGltZXN0
YW1wCmhlYWRlci4gaWdiX3B0cF9yeF9wa3RzdGFtcCgpIGFscmVhZHkgaGFzIHR3byBndWFyZHMg
YWdhaW5zdCBhY3Rpbmcgb24gYQpub24taGVhZGVyIGJ1ZmZlcjogaXQgcmV0dXJucyAwIGlmIFBU
UCBpcyBkaXNhYmxlZCwgYW5kIHJldHVybnMgMCBpZiB0aGUKcmVzZXJ2ZWQgZHdvcmRzICh0aGUg
Zmlyc3QgOCBieXRlcykgYXJlIG5vbi16ZXJvLiBOZWl0aGVyIGlzIHN1ZmZpY2llbnQKaGVyZTog
UFRQIGlzIGVuYWJsZWQsIGFuZCBhIGNvbnRpbnVhdGlvbiBidWZmZXIgd2hvc2UgcGF5bG9hZCBo
YXBwZW5zIHRvCmJlZ2luIHdpdGggOCB6ZXJvIGJ5dGVzIHBhc3NlcyB0aGUgcmVzZXJ2ZWQtZHdv
cmQgY2hlY2suIEluIHRoYXQgY2FzZSB0aGUKcGF5bG9hZCBpcyBtaXN0YWtlbiBmb3IgYSB2YWxp
ZCB0aW1lc3RhbXAgaGVhZGVyIGFuZCBpZ2JfcHRwX3J4X3BrdHN0YW1wKCkKcmV0dXJucyBJR0Jf
VFNfSERSX0xFTiwgc28gdGhlIGNhbGxlciBzdHJpcHMgMTYgYnl0ZXMgb2YgcmVhbCBkYXRhIGZy
b20KdGhhdCBidWZmZXIuIEEgZnJhbWUgc3Bhbm5pbmcgTiBidWZmZXJzIHdob3NlIGNvbnRpbnVh
dGlvbiBidWZmZXJzIHN0YXJ0CndpdGggemVybyBieXRlcyB0aGVyZWZvcmUgbG9zZXMgMTYgKiAo
TiAtIDEpIGJ5dGVzIGZyb20gaXRzIHRhaWwuCgpUaGlzIGlzIGVhc2lseSB0cmlnZ2VyZWQgYnkg
YSBHaWdFIFZpc2lvbiBjYW1lcmEgc3RyZWFtaW5nIGRhcmsgZnJhbWVzCihtb3N0bHkgMHgwMCBw
aXhlbCBkYXRhKSBvdmVyIGp1bWJvIFVEUCB3aXRoIFBUUCBhY3RpdmUgb24gdGhlIHJlY2VpdmVy
Ogp0aGUgYWxsLXplcm8gZnJhbWVzIGFycml2ZSB0cnVuY2F0ZWQgd2hpbGUgZnJhbWVzIHdpdGgg
bm9uLXplcm8gY29udGVudAphcmUgZmluZS4gVGhlcmUgaXMgbm8gZXJyb3IgaW5kaWNhdGlvbi4K
Ck5vIGNvbnRlbnQtYmFzZWQgY2hlY2sgY2FuIHJlbGlhYmx5IHRlbGwgYSBjb250aW51YXRpb24g
YnVmZmVyIHRoYXQgYmVnaW5zCndpdGggemVybyBieXRlcyBmcm9tIGEgcmVhbCB0aW1lc3RhbXAg
aGVhZGVyLCBiZWNhdXNlIGJvdGggYXJlIGFsbCB6ZXJvLgpGaXggaXQgc3RydWN0dXJhbGx5IGlu
c3RlYWQ6IG9ubHkgYXR0ZW1wdCB0aGUgc3RyaXAgb24gdGhlIGZpcnN0IGJ1ZmZlciBvZgphIGZy
YW1lLCB3aGljaCBpcyB0aGUgb25seSBidWZmZXIgdGhhdCBjYW4gY29udGFpbiBhIHRpbWVzdGFt
cCBoZWFkZXIuIEluCmlnYl9jbGVhbl9yeF9pcnEoKSBza2IgaXMgTlVMTCB1bnRpbCB0aGUgZmly
c3QgYnVmZmVyIGhhcyBiZWVuIHByb2Nlc3NlZCwKc28gZ3VhcmRpbmcgdGhlIHN0cmlwIHdpdGgg
IXNrYiByZXN0cmljdHMgaXQgdG8gdGhlIGZpcnN0IGJ1ZmZlcgpyZWdhcmRsZXNzIG9mIHBheWxv
YWQgY29udGVudC4KCkZpeGVzOiA1Mzc5MjYwODUyYjAgKCJpZ2I6IEZpeCBYRFAgd2l0aCBQVFAg
ZW5hYmxlZCIpCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IFQgS3Vz
dGVycyA8dGt1c3RlcnNAYXdldGEubmw+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2lnYl9tYWluLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yi9pZ2JfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMK
aW5kZXggY2U5MWRkYTAwZWMwLi5hYmI1NWNkNTg5YTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYi9pZ2JfbWFpbi5jCkBAIC05MDYxLDcgKzkwNjEsOCBAQCBzdGF0aWMgaW50IGln
Yl9jbGVhbl9yeF9pcnEoc3RydWN0IGlnYl9xX3ZlY3RvciAqcV92ZWN0b3IsIGNvbnN0IGludCBi
dWRnZXQpCiAJCXBrdGJ1ZiA9IHBhZ2VfYWRkcmVzcyhyeF9idWZmZXItPnBhZ2UpICsgcnhfYnVm
ZmVyLT5wYWdlX29mZnNldDsKIAogCQkvKiBwdWxsIHJ4IHBhY2tldCB0aW1lc3RhbXAgaWYgYXZh
aWxhYmxlIGFuZCB2YWxpZCAqLwotCQlpZiAoaWdiX3Rlc3Rfc3RhdGVycihyeF9kZXNjLCBFMTAw
MF9SWERBRFZfU1RBVF9UU0lQKSkgeworCQlpZiAoIXNrYiAmJgorCQkgICAgaWdiX3Rlc3Rfc3Rh
dGVycihyeF9kZXNjLCBFMTAwMF9SWERBRFZfU1RBVF9UU0lQKSkgewogCQkJaW50IHRzX2hkcl9s
ZW47CiAKIAkJCXRzX2hkcl9sZW4gPSBpZ2JfcHRwX3J4X3BrdHN0YW1wKHJ4X3JpbmctPnFfdmVj
dG9yLAotLSAKMi4yNy4wCgo=

--_002_PAWPR05MB1069106D52F4E17F1EDB99C67B9182PAWPR05MB10691eu_--
