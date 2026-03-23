Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBvFOYxnwWliSwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 17:17:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF702F7D9E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 17:17:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45CF48176A;
	Mon, 23 Mar 2026 16:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SlqDXvEASjh7; Mon, 23 Mar 2026 16:17:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD59F8175A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774282633;
	bh=/v2z9klEsLEgpOs0AOXZmf1wo/oliN6TtfRQngELrJI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FvAmqEENUZsg8a7BS5069nZGObrEgrdW0UF/DB2/A5Dn3pfkhYlcUBFG4i9is0BJ5
	 t2+/hSwlKWQNzG+sYiZrsJqY152UDNGeZ/bnC8dhU2K9GqyxbrDnf+VBN6B6nrfpME
	 1+jlmeXvF3I/NlrEo9DJlqUkNJ34/X1+gAQjDqD1e9N36bdBZyBkg/QRYwxYyRNnUw
	 Gz1Wl2ilj02UZQzikLgS5NlwolzeByyiv7r9Hhuz9CBmk7ypphBhar4bddPZn68v1V
	 tTQriPDH2Tn++OKN6VqMpmB8/hkivdqdxQ/Hv3yinmnvTw6n/ilOFcC2OvVStaq0Uv
	 oUXvziQz6ZSMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD59F8175A;
	Mon, 23 Mar 2026 16:17:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CC9A353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 16:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E49740589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 16:17:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r1tlmXSxZrq7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 16:17:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57CEB4057B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57CEB4057B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57CEB4057B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 16:17:11 +0000 (UTC)
X-CSE-ConnectionGUID: kH1f3zGMTWiMWsS73FCcmg==
X-CSE-MsgGUID: +Sq9pfKtTxWa0zNkWhBuMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="86653049"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="86653049"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 09:17:10 -0700
X-CSE-ConnectionGUID: PqWIi2CSRT+ZYFhbbY6Yug==
X-CSE-MsgGUID: EKbEnvphQXGMtWnPNXR3Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="224088419"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 09:17:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 09:17:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 09:17:09 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 09:17:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4XM5B1Cl8BU1A8FkCUJKPd6liI7djpS4gHUPTvSBxhvBnsslMUCGZuYMaZkHfmMRs9ovXUPXA5IVNP4cS4PDaisOKQtKvbqPubQes24dtXLosJjEb3znL21hjUvjumJjj7NkevOgdHYO751plygkgryEXw6S6MmeNxlNngD34fmqhPQ7qC2EtwRP1jLOgI45R5MMI7QPSNAGUk+DgFpeZ7z8GqnphdRHO4ep1LN3gXL6jd2hMkQsLfdwp9Wjo8dCvaRFZzSx7DCNtOX3ZQtNQqsRqSMzB2q6cY5fx2IeRGtgS8emRSfsGCdyvZ8U2RJrMtPFI6x8MzFMvK0VhM9ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/v2z9klEsLEgpOs0AOXZmf1wo/oliN6TtfRQngELrJI=;
 b=ECqOfQ3QApr7lCycO6lLfsVK6o51TEObeAJ/pEmKF8S9z4gaNdXy5QA2dkNvmj5+roKpAn3qQqAcA2MFBETG5oMzV7iC994bMBYLEnLxkSU2+8zAHWGfBViHvQmTP8WjiPp6zCRO8LU3A1BP31Jwjf1HiPAAsx3978i8np/EvCFK+EZY75CLMo861ZcPIhfdE3s0cNVn/A5WxXlRUlSZtR9KSjaWLK4uLjRqYzF9Bfcg6G6L/d7sZJE0E3IQgLNYhJxXwZ4MnBQ/66C4hrDg7RLzRQ39dBdXog5+aMejkW4F10osTzP9G6RnC2NauahGYpRlDUuZzE35hLg1NVJQ6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by IA1PR11MB7317.namprd11.prod.outlook.com (2603:10b6:208:427::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 16:17:06 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 16:17:06 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in
 alloc_etherdev_mqs()
Thread-Index: AQHcpMf77BN6+IVYiEKG4c8SfGYNirW8dhQg
Date: Mon, 23 Mar 2026 16:17:06 +0000
Message-ID: <LV1PR11MB8790926AB7A674D41DF2915E904BA@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|IA1PR11MB7317:EE_
x-ms-office365-filtering-correlation-id: 849687c9-7f8d-4940-3131-08de88f7a055
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: S9OpWJZGbQIljo3tzD6+XB/qaac0ycNUaTLnIdbg1sRRVggdUXlOPJcLA1uwrJewhBq2ko9m0g8b6yrGQ68TYnIKMWDrP/3CS+a8ftWKK8Eg6MUK9U7ZHRkCz0DADStNWL7xlM0xN3htDCufOu+Ypji2GiusN04QWX0fNX1zI1GDSYFNneSBrnQOjSliweBS6lUIo9cVeu290j8tTZv44PQ13WrGbeHPR8g3m9Der0zPKoPXFUu2Ph5LmELMh0T7m40TkWT+2i4Oct4gukRyunoc+VLC3DTrWLcIRw93L330ZZR4UG7FTYgdk8lPpTUhIxuXqaKOUi7IBELI91yW9LgeLnYPgORJxubVxSOPQ/KbDfncX5v+9oNzTjpqj5/NU2oKHPXi1mziSyRlso6Q51U9HeTZTjComfbxc+KzYJpeOAdu8R7DOKMfUaO+AO+5SaXusxYkDFe8F7rrTlixpRjbESzJ3s7DSk+aq4q2iJxokuyWzSZDXmLRPP1f8sUw1QpXakGgwUOqt+fo5sLDkFFdiA7pSUcnR9NPz8khLfiSOoAmDxt5kAtF2KT++bNrGU3cBsytbDfnMwHQv1JjTJroYXxgoR3HlvMaqW5IPibHCjSVtR0cTKkQdUhgb4sCqd/QF6+kcX/C1MuZX1PZPuO8xJdcrmU66Ztbv7ppS5pdkA+jeENHAgTEdMdBZQZX+3QLQ/FZafRCBwqTvsyxhjvi2c4ReBE1TnRL/+JWSAVeDWVG9Qk7oTboy9tbQ139xW4lInhil9hbMj9mW92bV4r3fnX9ijhdev6VNmmUpf0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TyOmrKMAiKMelKqwG5kSZ4km10GKFVzWfy4yD9TXqg3LSM/yrZw17D2HaZDi?=
 =?us-ascii?Q?DkvAkGHgAsGS2bfkTVDAxw4Un+0n2/mS0Q1TjUtdLGGqkywz47qtv4wBbqrN?=
 =?us-ascii?Q?o+WLEKF/w/qDF7sqV8WRrnJgWYe4sKL9f1NYSto9SvO/mkV7RZHZ1eKHGLAs?=
 =?us-ascii?Q?vhuWeYV6NGr3W05EEIPmodMOCQcJ4Jpnvn8w42WcI/lUreJf/mkS8VUFGyM4?=
 =?us-ascii?Q?ta+0p3iwSnjKtnYOcdCtt1i9t4PUj8fJlVUQSSiMC9g+nlBNC+uqkP0yrn3n?=
 =?us-ascii?Q?SWVmUIQDmZ9JNJ/NppnbDLibjWmw8+OAMV0ZAozAAW9LjW1CH1zlVhw9ngFO?=
 =?us-ascii?Q?FYIMq9289UFCXOYP23sPKADE5PMFSBMkEof7rxFayZfSZtW8hvLAwt6KkfYD?=
 =?us-ascii?Q?sOyV8wfuBY0mBzH0ORaI3JkQTjGe+KZc6gNE6LTJv+5eNCGvrUl8NqKqFArG?=
 =?us-ascii?Q?bWs4LUyilKt96M0vjK38swy/G7H2RcvvjbeGrtt4pP18zjsuaj8XDEKTfvnl?=
 =?us-ascii?Q?9qn26gMEu+m92i+YS73TL3mo2qR5BOLQh2QtGLn5WzV2KhsEir0LipI7NO8e?=
 =?us-ascii?Q?PZV/piwrrA5+MOIstL1OBAUHfKR98zVRP43FsMSFmt+6zIFKs2ihtpySH/SB?=
 =?us-ascii?Q?b8tlt7XFbKE0YLBqdqOp2BvKxsrlxq7kk8bbQZs/6NMfCYi6a3b3fBMzZi4b?=
 =?us-ascii?Q?A3FpAdPV7uIOZjTsZKKzeGEpvw8I4dk/eGYOuK/7en69W5TepSBRYx+gZQ4W?=
 =?us-ascii?Q?QJIfruRpxYNwleV2TzZui8jz2mf7z6xGZqwbyrT95xLHE9Wjh5ooRukNc6An?=
 =?us-ascii?Q?2GgpFyBXK56DLPHw15Pbc51xaDgi6iIlwmlYHHskx/6UWLecbXSPDV9aFWnQ?=
 =?us-ascii?Q?7nY92bJdREFuQFMxjNPxNiOOdziTIPh1hc9t24OjSYSeL4NGFL4NVuv+W+Xp?=
 =?us-ascii?Q?tUKArYQlrBpI51kXnBSImJBIFqd4JIic38ANhwsisummYHVPFbiirzgTToW1?=
 =?us-ascii?Q?edmCmB5ewnFDj2r2E/b2pmg1uRMesNOmCxacQ1WtXvXa+2LloqSjia+i0OFh?=
 =?us-ascii?Q?UCdCBTw5rEmDd89yMqAz6jOQ0HqgHqeydEJMt+pPz4pcASAc4Wz/jWyO7UhH?=
 =?us-ascii?Q?CCHwvR97JeFGnGX858BVs8ftv5GkhaZSGh2Fotfez0lS7QLEofL+I2NWR69b?=
 =?us-ascii?Q?K61OCfcXOmF80TVG9kHz3gGBh5/yZPyv9ONiwFfDwDXVmKGOxldaG6xdOyDE?=
 =?us-ascii?Q?T6lhueVH4t/CqWSDya0z9/qC80EnbX3LkdfotvmLv+HXTpufuqG1h7iBUO6s?=
 =?us-ascii?Q?9EB/UdpzR0Hhzqpjw0lxv0dtP+9VWXrdoZesyVNZdBDiaq2CDKgponvnTJPE?=
 =?us-ascii?Q?iwNJBscDumqz1Nzllmthghxaxvwz6uLc9CBuhRumqw1/iav6MOaILNbx3UHE?=
 =?us-ascii?Q?zUga8hUsiBuXrDY7J9ITVoEyJ+LEQW+zLY2tpnAKylMR5dP4QSSQnZ1pURGQ?=
 =?us-ascii?Q?7w00kqVwILQE1PJZ/5lFWFfn5zxo6iGj7KtbVieMbMKpK64fWoapukqe734z?=
 =?us-ascii?Q?BSnrJbBdk52fyUQpU2/W5V1AsMS4YXYs0ux2S6iyh1ao8+7/1fV17n9iBw3/?=
 =?us-ascii?Q?SIgzSrei/0q1jZ+aO6mfw3CTZoo+SgcrsUZGKlVZz2DTYkw3GawhIW2ezxHI?=
 =?us-ascii?Q?gUQ8iUPXrc9Yysh3IPBvl3YfezJZlAl7t3VCrPwZmn9yt6MMWClFsxnXlIyW?=
 =?us-ascii?Q?h6xh/6MEMw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: H7zo7LaRsBDd+LwSjFXZ5PM1LYwlnjTjoKacoKChncQ82bONM+y7/1pgaiP2JacrI/3H9STJA6dPrYeiYoh4ng76h0ae/ZZMAfQxJCDZKOaS7VXCoaTrGHZadywYA5nZLB0lTgzl6lxl5WVYHM9vakCZDTkxdHKoafTvHvs6jBy9GeMYpU5gD13e4jVfQrKHUGv/gs0ioTVp2BFhVYASz2wbfRroVaYQdfx5DWaIbTFiQRwuco+Ixe8FvXP1lOHOvGUNvDgHkz0YuFafnGRO63bulsKeyUiQgRlnJOHyXKGI2p2dseaztpPKCNKnRHuewI92jw6kAFvwVHdlqChNOQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 849687c9-7f8d-4940-3131-08de88f7a055
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 16:17:06.0485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2kEQDlUOWSetiQBPx5ubyLjJtmo6zIkxfnkkNztmpNTg9Z1YWitMDtut1+tjo3OpjxS4NHfB+sJ2ncEXgxlq2cpWSTstGl9MxcBx9hvBtJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7317
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774282631; x=1805818631;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u4pNW49FPMX51GqD3j1N3SbGwiNJiLp/IArL7G+c0Ek=;
 b=UcFe3o527qA/LTOK8YOtQj2w6W5HUI/TEQScKkahPzevWmcERqohCJgi
 RApEIko1YNBlG3fi+sNsXQmdCqPrxcOY1eSIM/008IGqmKJ1GzN6wAuyU
 37LoFDRQQwWXbE7c20gT24pL42P9sF1lO6kzaE62BOjThoCc+GKII9IAM
 k06ZuSPKJXJ5H4VwfViPntwGV2BeM1aPODNnrS+Ocya+gnNmpgYJK6o07
 1ZB8YXzimW6q6EvCWpBNk3sVcY9cjo9XkWC6ymV+ctJ2/6Gd6GRfuuDCB
 530bIyNphMuUFZEBF+ACxtVJU45c0WFG5veP0wzFBglFszFSiE9HBbEfw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UcFe3o52
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in
 alloc_etherdev_mqs()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email]
X-Rspamd-Queue-Id: BBF702F7D9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: Monday, February 23, 2026 4:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski <michal.swiatkowski@linux.=
intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in allo=
c_etherdev_mqs()
>=20
> When allocating netdevice using alloc_etherdev_mqs() the maximum supporte=
d queues number should be passed. The vsi->alloc_txq/rxq is storing current=
 number of queues, not the maximum ones.
>=20
> Use the same function for getting max Tx and Rx queues which is used duri=
ng ethtool -l call to set maximum number of queues during netdev allocation=
.
>=20
> Reproduction steps:
> $ethtool -l $pf # says current 16, max 64 $ethtool -S $pf # fine $ethtool=
 -L $pf combined 40 # crash
>=20
> [491187.472594] Call Trace:
 [491187.472829]  <TASK>
> [491187.473067]  netif_set_xps_queue+0x26/0x40 [491187.473305]  ice_vsi_c=
fg_txq+0x265/0x3d0 [ice] [491187.473619]  ice_vsi_cfg_lan_txqs+0x68/0xa0 [i=
ce] [491187.473918]  ice_vsi_cfg_lan+0x2b/0xa0=20
> [ice] [491187.474202]  ice_vsi_open+0x71/0x170 [ice] [491187.474484]  ice=
_vsi_recfg_qs+0x17f/0x230 [ice] [491187.474759]  ? dev_get_min_mp_channel_c=
ount+0xab/0xd0
> [491187.474987]  ice_set_channels+0x185/0x3d0 [ice] [491187.475278]  ethn=
l_set_channels+0x26f/0x340
>=20
> Fixes: ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 22 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 ----------------
>  drivers/net/ethernet/intel/ice/ice_main.c    |  4 ++--
>  3 files changed, 24 insertions(+), 20 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
