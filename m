Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 556BE87FD06
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 12:38:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 032C481E3F;
	Tue, 19 Mar 2024 11:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AjBlTWJin0ev; Tue, 19 Mar 2024 11:38:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B54281E40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710848293;
	bh=ri5RN100ReJ43hM14Ilvz0EdODGQAprBrvObqP4COh8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m5MAJLtyw1zje2dDonTBpWfVVhyC1IamzQ2m44h1A+acV1MB159u5+rADBg3SQ5LI
	 a8VhzwnLL6tW2G46aaqTe5xBHBu9rn/VI93UZTbepYWF9c3J3++3bhlCg0CoAqmCsG
	 DGnWq2cDFqnqBCykOLq+TcbmnLnLtgfg1uvx6sXxIeEc6Eatm6wPgaGahsYEgReBB9
	 7IMVb+gw1m1GGG8fImy+4Gp/q/4E2nneWcRswl+n4tuT+U+SP6kPtXlk1Oe2j67J5u
	 /UIrp3B2MTsNmDS5JtybSiocNLm9UcP6jZNclsKi59I6TFMFbY4yLk2/EDPW9SWDEW
	 Ked4MzN+KwTeQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B54281E40;
	Tue, 19 Mar 2024 11:38:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B8361BF427
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 11:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0515381E3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 11:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7sNmtGJW6np for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 11:38:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.21.136;
 helo=eur05-vi1-obe.outbound.protection.outlook.com;
 envelope-from=e.velu@criteo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B355281E3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B355281E3B
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2136.outbound.protection.outlook.com [40.107.21.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B355281E3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 11:38:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CYxQ7DAi6xYvX+lCGrJhix/tp6g3/U0H1iIVZJAZqkgGV/nC8lThHEPlBpWI/AfE/3UfvJ4JSs5Y2G43zBZZGpBDBWQOyzo0L+IQgEdqKRrAnuB1A8BX9yn/ethf2KmxAJjTIHlaemzBuWPHHmrMnBuF0lMb8UVEq6Dr8rOZv11khL/eeMZKWVy3nWihwfct/hYWgFLtsMUQcOpStMwklH/ixshbUfSJjvzVPz9qqTcGRqw+8Ins8J6ZHfxx2n0EpPc6NW38px7lfD5MdEQndFAkl1yJnvOxsZzxAUWfEfopKsNeJ8u+94Qpp64uSfjuRcFEVtSfGFZEHBZwi1awcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ri5RN100ReJ43hM14Ilvz0EdODGQAprBrvObqP4COh8=;
 b=LU/iqLrhtPuE5nBgOQaoTUH0IxpAHQbZ+Q64ZVCHa1L1sVXEITwSME8wUpz9Me/HqkHHMvLRMaZ8NNo0AzSQyViy8plJa6iIiY9MulTlDZ42866NF2bmw1TSPFep0GVEDRtUiP51wr4/Na6fgN4miD+6N5CTjvbjmO13pstyrD8AmA+bQh0uZQyyv+FI0YVnwyNQDFW6/vq5kr6XbJELTujOnbSw5evnZnZ82s7/hKAP4MHUSVx6le8sfezVOwecJwzYz+2peviccKI68AijTNixKuGbYmzCTXsiAsdxbMDf2x+wq4hciXv8jayjenVxnWOI9S8R2bPUh/VcPptRPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=criteo.com; dmarc=pass action=none header.from=criteo.com;
 dkim=pass header.d=criteo.com; arc=none
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com (2603:10a6:102:20c::11)
 by AS8PR04MB8756.eurprd04.prod.outlook.com (2603:10a6:20b:42f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.25; Tue, 19 Mar
 2024 11:38:04 +0000
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2]) by PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2%4]) with mapi id 15.20.7386.023; Tue, 19 Mar 2024
 11:38:04 +0000
Content-Type: multipart/alternative;
 boundary="------------bc33ep3h1oDdu0CBh661zNyo"
Message-ID: <d33b98de-dfc0-445e-bdd7-0ae76d050ed4@criteo.com>
Date: Tue, 19 Mar 2024 12:38:03 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>, Erwan Velu <erwanaliasr1@gmail.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <20240318174503.GE1623@kernel.org>
From: Erwan Velu <e.velu@criteo.com>
In-Reply-To: <20240318174503.GE1623@kernel.org>
X-ClientProxiedBy: PA7P264CA0089.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:349::9) To PAXPR04MB8989.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8989:EE_|AS8PR04MB8756:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9VtqEe6DPY2GYVou833O6vPx40Jf4NxCHa83Ye4f8Lbm4j/asJsv4Gu8Zwq6TckQmvGQdprZ8cY+ONPgKVQiTvT25AH3nJK2xyrxlBJ/RU0nTBrMv8A1fYktju1oQixNIZ8JorXM+nSO/K47MF+I7VMQMxHKObYyWt8j70iGifBhNZDYybRQxJ0z5eZIJlOzn2794kcX7mN5QhM9L8NrlERbSS5oT0b3GZswvb4BNGF410jD+K9FrhC3BmAPnSxaOj2k0/qQCdG+GR/QgJKLqP4Fobi2jYmc3lejOk3riFI6w3S+6nr7Sb1Tb6jhFRv8pwWihdEY0jdctsjEa85bJCZaXC7VHkpL0zoKxOimvUTB4aN6/L+TdKZWvQ6afYOFV9LrnJ4d8+lJ0/HA6wPrINJp6mtyse8j1cocKt+GdG7SBHfX+wyyZKedVBzoMV6WKfX2Rn/V3QGL1X608sqpxoX0ZX2aPjNlH6MteCmMRquHxfv7X9vJ4OVwRPVrBcMs6dg3a+MvfvtiB4YZoBF4YY90U6tVKxIAExMqdRmodTGl1G55wYswK+9URpNLWyVH1NfUlLsEmBHgOevGohXjfhEMw1JR2+2mtFXsoS1pAIBK0Ni64hMtyCPSFtpTumh4SA/67GinmTtH8a2P0n9nLeQ2A21B9Vnc9vCXBIqUd6M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAXPR04MB8989.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVFVTjE3a2ZLeTEwU1NWa0toT08rMEZpdGFTbWFXY1h3a0JLY0pETUhGNmpK?=
 =?utf-8?B?MlpQR0hBZjg3eW9ZTGFZaG5PbUZ6YVpMODNEWTYraHlnQ3R0cmdRQU90UGl2?=
 =?utf-8?B?cmxhcW1KaEd0SWtGekMwS0lJWllNeXJibG1VTGc1ZGtBVWlFaW9PLzFxUGxC?=
 =?utf-8?B?ckRxSUhqRVpIVW9WK1kyZnlDZXhkVERzcmlYd1ZYbW1iTGU0dFZKRjROdEJp?=
 =?utf-8?B?RTFkSEcybHRXN1F5c1h1TWtXS1JPK2xsREZyRDFqVGs2MWtDZ204TTNwUEY5?=
 =?utf-8?B?V2h1emIxTEgvbUsvVTVscFg2R3NDS1RuN0Q0ajcySXluSEk4RzhlMVluVjgz?=
 =?utf-8?B?UTlzN2lOSGJTbTQ1VU1iMVZKVGlnQjhZYk1ZQytjdi9VeTlmOGxOZlc3UHI5?=
 =?utf-8?B?Qi9UL1kzU2o0SjJoc1VudXpFWERUbHJlM2NlcVJJeFBkWisyaDVhcGQ4R0dO?=
 =?utf-8?B?RFBZaGZoamNveDc4WDFqNmNKYkMzSklBQlhuYlhJazVtdU90VEgya05YcFBN?=
 =?utf-8?B?c2l6am9CeXpSMXlSMGMwR0c2SHJiRkgwNEp2YnN2QkdTakdtRUd1bDQrMkZN?=
 =?utf-8?B?Ymd4anpSUjc4K1dSaE1QSFZIcDlJN1lIUTBLTmluMkYwTDlCNXdyeE00NlZY?=
 =?utf-8?B?cE91WTI1VUNsOEp5MlJjMkdWVHpMYTIvQWE3dWlMcVh6eXdUK3Z6RFdGNGli?=
 =?utf-8?B?NGsxeTM0QkhPVmY1NlR0NWxwTmhUaVVpZTlhMWlTNnhic3VEejk1enlJdkk3?=
 =?utf-8?B?R3ZUZEJBcmJRSHkyTkFCWlpRRjBkSC85Z0JzUUhaeHBDYzIvZE5kWHFhbmJ5?=
 =?utf-8?B?RDRFdy9vS0pTV2FlODFKcTBCb0svVjFpbGRHMHlwYTdkMVFaV3doSHZtdXZw?=
 =?utf-8?B?aCtybm9PeDI1YnR6b1RDVWhkOUZIc0xNNUJWdFF4R2RsZVVrWERPN1cxdE4r?=
 =?utf-8?B?ck5qdkR3RUlDWUEvR0NvbzAxSUhubHMxaUxNMEZDN2FEdHF2M3ZjVEVnTVlo?=
 =?utf-8?B?SktOT1RmWmRCWEI0RVRiWHIzWkh0Um9jL2JaZ2ZGK2VHdUI4ZFBEVGpXQ1FR?=
 =?utf-8?B?dmNPWHpML3ZnUzVFRGNubGJFSUdpeGhLNFU4SWg1UlZRNGpLUzZ3emdOYytw?=
 =?utf-8?B?RFQ3aDB1SVRBWVVxR3BoY3dTMmwzRy9ueEFwSC8vQ2cySnhLQXBZZlh4ZmJP?=
 =?utf-8?B?TUJuVnB2Lzl1dlFNbFgwNXNxbGFzWVJhdmtQZVJHSGhDYXlnQkw5SWhuMnAv?=
 =?utf-8?B?TGRBa1lSa21UK1ltZXRTd1RGM3JwSEVuNHdxTGp6YzlVVXpFOGR1K2hobXF5?=
 =?utf-8?B?eGFxdm0wQ1JBSnhpeVNKdmpSS3pHNHQwMmZVOGRCR3dHVllUQitGbDBBYU93?=
 =?utf-8?B?SW9PVFpPTzBqR1FZQ3NldmI4QXF4MDRPYXF6Wm1mc3hkelhSWTNBcXhKSzJN?=
 =?utf-8?B?MEJjKytnc2ErakdmUnNjRmkxelFBNTFhUlg0eWxBbFZUNkY1QXc0KzMvTVI2?=
 =?utf-8?B?RElVcXJGOU5sanB0MnFvR3NNejIyQkRrWVhTZDZSRjN4NU5EWmhWS2cxL3Vz?=
 =?utf-8?B?ZTNRR0NqUXFjRVMyT3NXV1JTRDQ4VGkyRHc1SGtsVGx6akl1Um9EUXIxK0J3?=
 =?utf-8?B?Yk1mbmd6U3hrakhhZkVscGNGN215YkdtTHpRTVZ3d3VSanNFcW91STh3bDVM?=
 =?utf-8?B?YXVFa2s0OXFMMGJRVlRkTHBZRXZMQWtvbVBmM0RMUmJ4UXc0MUpEQmVlMExQ?=
 =?utf-8?B?RUZIbVdYQzJyRjlEK0t0Ym5mT2hqRXRQTkVBeEo2cUpMVXh2Q0p0ek9MMlJG?=
 =?utf-8?B?QlVhUURRYlI3blhXSHZweElQTHZlNTlnNXVoV1FIamhDVEdIeVpsSXcyZENp?=
 =?utf-8?B?U3FhVHljbEhVU2NTWDQ2bGxCUzRjdEVQbENaUHYrVEhiQmkzMTZRNmxyeWxV?=
 =?utf-8?B?WUJVRU43V3JYZGRacHhlMTVIQnV5WDJGQU9tS24rQlRrR2U0WGRpc0NyQldr?=
 =?utf-8?B?UE90eC9uUWhjTVZhOE4rT3Q3UkVaTmI0cjVyQ1RCZGRlbnVwcDhyRzllbkZ4?=
 =?utf-8?B?VkdPOTc5L09PVm15dUd2d24wTjQ2Z09mNHNyQ0dHWFFTczQ5bWN2d1duL2Za?=
 =?utf-8?B?eWVwK0hvZ2JyNzNaanR3VnlmNXBwT1dVKzBjb3BvYTBCaHJZblhWbUhGU2k4?=
 =?utf-8?Q?gIj+D+AYC1VVKaJc0KzKeJuklrrg82YIHYNnOF7p4qfy?=
X-OriginatorOrg: criteo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63f28b94-c75e-40de-1950-08dc48090a3d
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8989.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 11:38:04.4731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2a35d8fd-574d-48e3-927c-8c398e225a01
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1xQgwXQToea40Sk9s6g/uBSC4WHzSlD8aKyxsm2k9e/uxqyrtlwDe3rHnSL0DLgdxI4koxejbcKF1+G7BjzuCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8756
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=criteo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ri5RN100ReJ43hM14Ilvz0EdODGQAprBrvObqP4COh8=;
 b=VgEjfSAvgrfMLK/D/UL+C5zhas2K8gtMVTRIDzLzs5Tw8hOhX9hb7tOELDBb/trmuUf08Cs6DUdEXuJvHMFl8qv3QtN07Ch4ttYFR2ZTT453KNb9SS+o3A//ikl6ilCvN0i/d9BsKJGpVmyZYyiutjy7EM2w6cWKoEoqz3yu5FZGsZTsqjYtBoyq01eq689ts3Eacv7dAkXMBQOOarzNApIRi6Ih7/AoQ/JrHW/60G41VvPXH4WKCVRHVo4SZ/GL3TW3pwB9q0ZOSYndLLNX8oxtELHEoyS/5svl4niWnv/o+1Gor5TVrZDQESanegRAB08seoTnbg/CZKfe7YTjNA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=criteo.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=criteo.com header.i=@criteo.com header.a=rsa-sha256
 header.s=selector2 header.b=VgEjfSAv
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------bc33ep3h1oDdu0CBh661zNyo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Le 18/03/2024 à 18:45, Simon Horman a écrit :
> [...]
> Hi Erwan, all,
>
> As a fix, I think this patch warrants a fixes tag.
> Perhaps this one is appropriate?
>
> Fixes: 41c445ff0f48 ("i40e: main driver core")

Simon

Isn't that a bit too generic ?

[..]

> I am fine with this patch, so please take what follows as a suggestion
> for improvement, possibly as a follow-up. Not as a hard requirement from
> my side.
>
> The part of this function between the two hunks of this patch is:
>
>                  netdev_err(netdev, "Error changing mtu to %d, Max is %d\n",
>                             new_mtu, frame_size - I40E_PACKET_HDR_PAD);
>
> My reading is that with this patch two different limits are
> checked wrt maximum MTU size:
>
> 1. A VSI level limit, which relates to RX buffer size
> 2. A PHY level limit that relates to the MFS
>
> That seems fine to me. But the log message for 1 (above) does
> not seem particularly informative wrt which limit has been exceeded.

I got some comments around this.

I wanted to keep my patch being focused on the mfs issue, but I can 
offer a patch to get a similar output for this. What WRT stands for ?


I wanted also to make another patch for this :

dev_warn(&pdev->dev, "MFS for port %x has been set below the default: 
%x\n",pf->hw.port, val);

The MFS reported as hex without a "0x" prefix is very misleading, I can 
offer a patch for this too.


Erwan,

--------------bc33ep3h1oDdu0CBh661zNyo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Le 18/03/2024 à 18:45, Simon Horman a
      écrit&nbsp;:<br>
    </div>
    <blockquote type="cite" cite="mid:20240318174503.GE1623@kernel.org">[...]<span style="white-space: pre-wrap">
</span>
      <pre class="moz-quote-pre" wrap="">Hi Erwan, all,

As a fix, I think this patch warrants a fixes tag.
Perhaps this one is appropriate?

Fixes: 41c445ff0f48 (&quot;i40e: main driver core&quot;)</pre>
    </blockquote>
    <p>Simon<br>
    </p>
    <p>Isn't that a bit too generic ?</p>
    <p>[..]<br>
    </p>
    <blockquote type="cite" cite="mid:20240318174503.GE1623@kernel.org">
      <pre class="moz-quote-pre" wrap="">I am fine with this patch, so please take what follows as a suggestion
for improvement, possibly as a follow-up. Not as a hard requirement from
my side.

The part of this function between the two hunks of this patch is:

                netdev_err(netdev, &quot;Error changing mtu to %d, Max is %d\n&quot;,
                           new_mtu, frame_size - I40E_PACKET_HDR_PAD);

My reading is that with this patch two different limits are
checked wrt maximum MTU size:

1. A VSI level limit, which relates to RX buffer size
2. A PHY level limit that relates to the MFS

That seems fine to me. But the log message for 1 (above) does
not seem particularly informative wrt which limit has been exceeded.
</pre>
    </blockquote>
    <p>I got some comments around this.</p>
    <p>I wanted to keep my patch being focused on the mfs issue, but I
      can offer a patch to get a similar output for this. What WRT
      stands for ?</p>
    <p><br>
    </p>
    <p>I wanted also to make another patch for this :</p>
    <p>dev_warn(&amp;pdev-&gt;dev, &quot;MFS for port %x has been set below
      the default: %x\n&quot;,pf-&gt;hw.port, val);</p>
    <p>The MFS reported as hex without a &quot;0x&quot; prefix is very misleading,
      I can offer a patch for this too.</p>
    <p><br>
    </p>
    <p>Erwan,<br>
    </p>
  </body>
</html>

--------------bc33ep3h1oDdu0CBh661zNyo--
