Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8JFNCKn0L2qlJwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 14:48:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 785EA68662A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 14:48:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=O7EuBYgQ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2672D60ABB;
	Mon, 15 Jun 2026 12:48:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9jPMfUx2j7Lu; Mon, 15 Jun 2026 12:48:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C86960B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781527718;
	bh=NcuMPJ412NDj6cMrPKLiYFtduBARHCpQDcntQsoC3sc=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=O7EuBYgQx9bk5INTglC4e0Lyg9CyfXgmoEJz47Go9FNfGT9zifQHwU2LmfgDPNUTN
	 9Bqa27oTqT/GepWeaRA1j5vq9FYuqdwOXDGwMnhrhz5WajXnusszJEAEkr/9ck3IBs
	 jfF6J3NFKzo/gr2vbcGujwzd/8RcjUp/uUuVZHZKNtiAAMTMD2N9UmNVdXKO8H/yXJ
	 nh3GnY0DItnKX1JrLIITCpHexytGDh69+sRviVfGl+MiyB5Im8VoGjAaI4ugGXOXkw
	 NauvNHvZeQZrivQnvsaL3bjPElGbEuExUo97IC69mWHfJGtr2atBviSFUryfGmygnW
	 xmFK2Rxe46GLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C86960B8B;
	Mon, 15 Jun 2026 12:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A9B632B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9025683123
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r16hNRn3qfpr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 12:48:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.139;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=tkusters@aweta.nl; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BCC1E83103
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCC1E83103
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11020139.outbound.protection.outlook.com [52.101.69.139])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCC1E83103
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:48:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K1NOkiIA+c18MBbaWq0W9GOwli0C+nU8QKe1Pe6NyLsZhWwqjUuQBTaVCExB2eHTSER6pI1lYS5qkuSEaQillDOmynociMfhoGYqOdPZQoIUhe4FtXgH5T19SWQoLvB7vMgnBZh84T7SUDh5tRhAcvg/0akR+pyGitWlb0oiiJ+2s2PawVyebwFmxpTkkX22cbAn7PqPTICbsN59JXeA1OArwP25u/yktsILD4XeazFvd3ntvS3YTUgtORyxYEi/N2ZL2kA8bHeGKMggr0nH10grdJPFYLU7DBkFNarrxEHbYvjEuXwohup1WwD5JajEwGbmMnzNCT5Mpx/t+bGAXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NcuMPJ412NDj6cMrPKLiYFtduBARHCpQDcntQsoC3sc=;
 b=gZOJcrDOYm/mfoagwRFG+Wox7lau1zPZa3yQxbMAlo3N2b4gsqLfEW0o63Oa9mxU8ZDV1E4bw/JdVIKgmaSPpsQN63of+hqbQCAkK5wZpas3sqP41otwlOZSbCb4fMY57qKVfFSlJDlCdRdvJsxwFT7OilsPPiDv8C9T9ME388j94NsgNzwkRyrrF5P/H3fclnEX/y98+C6GY4fPCCKwp1GTa+FpnZS751Nje09KscleG/ZydbuZdNLEW2KhLKCOrdDO/z9K/7pyQFqOMH7kIQ+/kBFCAZErA+4fZhK8iWCRmvX+Blbb5BtUsTOlj5iB4Xb+4imaLdTZNW3rY8pcgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aweta.nl; dmarc=pass action=none header.from=aweta.nl;
 dkim=pass header.d=aweta.nl; arc=none
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com (2603:10a6:102:35a::6)
 by DU0PR05MB10523.eurprd05.prod.outlook.com (2603:10a6:10:426::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 12:48:28 +0000
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754]) by PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 12:48:28 +0000
To: Kurt Kanzenbach <kurt@linutronix.de>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "hawk@kernel.org"
 <hawk@kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH net] igb: only strip Rx timestamp header on the first
 buffer of a frame
Thread-Index: Adz6QcrRn2ovfM6lTRK8EOoivUdfWACWOigAAAqj4MA=
Date: Mon, 15 Jun 2026 12:48:28 +0000
Message-ID: <PAWPR05MB106916AD984FCDF63E73A8E3FB9E62@PAWPR05MB10691.eurprd05.prod.outlook.com>
References: <PAWPR05MB1069106D52F4E17F1EDB99C67B9182@PAWPR05MB10691.eurprd05.prod.outlook.com>
 <8733yojljf.fsf@jax.kurt.home>
In-Reply-To: <8733yojljf.fsf@jax.kurt.home>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWPR05MB10691:EE_|DU0PR05MB10523:EE_
x-ms-office365-filtering-correlation-id: 4b4e4ba9-1fe4-4799-1709-08decadc6602
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|7416014|376014|1800799024|366016|56012099006|4143699003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: lDKwXN/v1ZcAIo/+tvnyPm1w99i08R2FcJ2DADtLb133mE2zM3AopGaYBVnKe7dIPs/0YD1N4XAU4z41mm7ErjLzr/PqXUKj6fspT7mQiSjvW1SEaNpNNpyf/+jz0TRBn64/cmzwZRiAsejf5NoKSfTfJA9x9xdAxU07HO+/09UGPr+8BlxDIW9R3awRa61qa7iuG8/he10NlWEGGP0lPKFr9vb7MjYB+iPKABY1yL2Hq4Lnmu+mDwxRdqLSKvcQ3+lYEvLa6ItdDMJR6LrgrwGU6dMiqkjQ1UF/xnP+QLh5kvtG/z0ekkvRmxvp//dhgAZYDYfYbepqSBaVgPH2Zbv09YA/h4OhPf95RsMxSiyU23BEbzBtaEg6R8kIHf0gCm4VpfX5ta2K6CRU9MyFBG37So5Q1qR6+2akZIO84Bc5Q/uRcGO3ef08MlCykF9zPKyk+Zhi6Gd+IWxlSDi+ZPYNOO/Q4AnoLuWybjjRLvGfj7leLxkZ68Lc0VJWTd3AdsLMXw2rwFc49p1gOS3MRjmVRRC6sQhTKUtdXzbBLQ+6h7quaWn/3HywSuZf4SIOiw62157a3nZM8Iqq7j89DwOutEQFDKtUPMhS+G20bNoG6ocTM1SxrM7/aXH5t1omjwo2KMX7htRoz86S/bxzpXcbCNn+BF9QmjVT5wpiiGfHzIkfXbwAaMT5mZ274Zeap3JUA3MmpqSMXRdT9HSkM8gT0DmZ7g6wBlXF8IbTsZu0sFJLBx3EEEI/czGtrz4u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAWPR05MB10691.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(7416014)(376014)(1800799024)(366016)(56012099006)(4143699003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZaDyT4S4W5+oOvwqah3ynDN0Io7bwvqYhCBn9f2l2F0t9UmAcuqdZGh0M2do?=
 =?us-ascii?Q?gtyErQ1lgFSp0BY/wdbUA+/J0AqTnzVeuwq/3p9VMrafw46La2Mppe5tGy0h?=
 =?us-ascii?Q?j5Jc+ipxcXh1vQkt9FsCsyYnHVlvMYcGAO+pmhodHPotmh4ie3bDgjzmBDA5?=
 =?us-ascii?Q?+sQ/3K0XlTFe1aa3OkBMXjn0iqGIYUtl2kGy9ySlQu4qzJwirB4NQqeclPwr?=
 =?us-ascii?Q?dn7Pi8wuGepjrPNhj+koWJvBEJZxXOhjhZsUEDD8iXualzjL66NjK5IsJhyA?=
 =?us-ascii?Q?3FCgJdrsbmMLUTpMhsvOSqvdn4UxbX13fIVV00pjtw+qki8TvxgbF7jBD3Jr?=
 =?us-ascii?Q?0btXTiwpefruojkw9DXiDKOV/IZE9DXci0aIUxnxBL5YBBH5Q3PMg3vQO240?=
 =?us-ascii?Q?ZvazZPPHAaVDl9pkmRFLbw6oWm6CLPd5GnWDqvXs19Hmqm6b2rjC/GFEmR4x?=
 =?us-ascii?Q?UH0Tkuo/W5rr/g4QTEgJWUz1Ye9aGy7l4i+RxdwwlRjEFjOgcxDOF/DcuPPl?=
 =?us-ascii?Q?n4CFs/AhCdAYVLmUheDP1+T/Kjm3OfJUWMTUyQrFertQfywroQb0spsh+yZD?=
 =?us-ascii?Q?Sb1wqmH9Y1TBv8dyoojPZby0yt51hzWpCIxGgUgFZkhCSeR0NrkSDgnhGEfP?=
 =?us-ascii?Q?FSsmKyL4UsMHo89teIM/NQ1Bc6yNQ1ln4oXcEkwbUi8bxkJR6Nkqu0HWHp9I?=
 =?us-ascii?Q?8LsOTnLBuWw0zf9vG79bnPFGDnGicAhZfYGY0JK3Crpggly+1c8g/K1TYoRA?=
 =?us-ascii?Q?rFuUPRvclpqagjkJ0MdrrRKzNBAReLrgmXdmZx9AJdjkSy46DFLul4AuS4cB?=
 =?us-ascii?Q?aaJu/AMy99ygdFtKwfJabOcS5YAj5KNd/DWzzdC1OIAffKLtrvdn6bHdvwIZ?=
 =?us-ascii?Q?vBCUTEt+nXgM77mRygM3gNexaDhsec57iCuGqJ74n+2SMWWjQH63niPgVu9Z?=
 =?us-ascii?Q?2QedJ65npHi/40BehpWPaXSL1N9ZcMeieka1n8IJeEwxPvuz6/PzvhvtPGWG?=
 =?us-ascii?Q?kmse3lk6dAod4q5bXGzrpSYU4nM8GpdB0lzRRvwRKT9gniSjZPX1y2WWLYj1?=
 =?us-ascii?Q?IJitM6ZFulsRthYv8ZnbRpenIwBtpX1iGhaEOtr7EoqEgDMvp/HVu6Fd0cLq?=
 =?us-ascii?Q?ao21mfsnTKC0htq4s7JJYGchS1WcMxPxcH0lwU6sOTa19wLpez3JOcu7D67H?=
 =?us-ascii?Q?PyWs2oZ5oqR0GZzlB1gCmw9e6FEuRsoOZgYPjA/hIOh+OPTyAPp7X1N4hhcW?=
 =?us-ascii?Q?9jlJ0uhimu/GfHjDxXw7JGRfzy819H3guytMbhyrKEWnTrdx3LnrUB8DsMOL?=
 =?us-ascii?Q?nCp2IGd+ZSQqGkyjg+ZbnI+9RQxOelKU+bO8rbpvsmdu+oIkjF4eKCO6CaWj?=
 =?us-ascii?Q?1gYbMbIpOkK7u5dTRBRkSPyto4T46LeiRNeR6LjGP6voytzgNsGuQc1MD8sO?=
 =?us-ascii?Q?HjYJntYzYEITSoArl8LHwJQbuWRvvq2RVmUbBSAAl6ytiQ3aYaQMYb7ZEhfN?=
 =?us-ascii?Q?ahYtkct4DjkpJayc11yMCklsFavXN/ci7p9+zOgLL5KZn0pftDF5dkV/NcF0?=
 =?us-ascii?Q?83QfQVxw2Xb0vR/qMEmRqQxkulxVPd0u7ppgOg/EfYBRspZtJnuLcj+p1hRL?=
 =?us-ascii?Q?oHTcsb8nKkP8uia/zTVV3WrZ0oRF2mjhVapuUwEgmTcGqLry44t9L5z0WaAW?=
 =?us-ascii?Q?Ie4Atqjg1CO6tyQnRph6NGydOIjKON5VrQY52JTIiDCKKuGM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: aweta.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWPR05MB10691.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b4e4ba9-1fe4-4799-1709-08decadc6602
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 12:48:28.6042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6546512a-ba20-41bf-9d8d-c076dcbf6fd9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fo2BlkcvVIFxRyWv4+CX95uKDKO8yLqFSxOl4ieTUNrhWWDzOk69+NNI0L/ED8H92wPn+MtaCkkR5aqv5B6KZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR05MB10523
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aweta.nl; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NcuMPJ412NDj6cMrPKLiYFtduBARHCpQDcntQsoC3sc=;
 b=kKVGYUBRZ1bwTN0ASgLYZtoieOeS3FPQfAU9ERXHWGBHwYvD4As33bNQdyLZH9NzM+JI/lzzpfysk1+D2bvEG8Yes/l3H6NO9tQb6t9V1LoRmqHyrt48TFMgDSV2NtswyOs+IXoqZKVFKjeKPYWuEAPg+FQ4Zunmkc4gcvYtCaLjttmzskTX75ksKTdYFVSAzv2UJlGB8M+19qgVUrA66WVjFWk1POSi6ijaQOqj7ixHxpCQ06yOaa/k6qYaeNwHsP2vKFqE08wX2tINV0kgNiFQUyX3yt5NPtLmamLT7HUG2Qin6cXvy/NhLBQaYB55nv0SKoE4zGNz5Tbp+Td2yQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=aweta.nl
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=aweta.nl header.i=@aweta.nl header.a=rsa-sha256
 header.s=selector1 header.b=kKVGYUBR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aweta.nl;
Subject: Re: [Intel-wired-lan] [PATCH net] igb: only strip Rx timestamp
 header on the first buffer of a frame
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:hawk@kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime,aweta.nl:replyto];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[tkusters@aweta.nl];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 785EA68662A

Hello,

>=20
> Great explanation! igb_clean_rx_irq_zc() does not need the same treatment=
,
> correct?
>=20
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>=20

Looks in the ZC path each frame fits in a single buffer, so igb_ptp_rx_pkts=
tamp() only runs on that one buffer. The bug only hits the regular RX path,=
 which can spread a frame over multiple buffers and calls igb_ptp_rx_pktsta=
mp() on each one - a continuation buffer can then be misread as a timestamp=
 header.

On affected systems I switched to Intel's out-of-tree igb 5.19.10 driver, w=
hich is not affected. I also reproduced both the failure and the 5.19.10 su=
ccess with a simple UDP test client/server (jumbo all-zero payloads), match=
ing what the real GigE camera showed

Regards
Tjerk

