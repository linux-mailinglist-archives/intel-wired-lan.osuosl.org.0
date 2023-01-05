Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C2465E35A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 04:19:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26EBB610C2;
	Thu,  5 Jan 2023 03:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26EBB610C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672888750;
	bh=5K+G+nBzWMLScOgAoOpI7XxXwVSD13riJ5guyjs4qas=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l6I9ebXJaldKMVH83WNfMXLBF8xpye2Bu7Puz1DkHnx8HIBOFcq+RuQ2TzpK5iRvP
	 hdzmy473bt72XKbiFeVeID0+zJyCqLRLDul7iv+pQUb17KjmGdErOEJGbQPJ9r4HnI
	 CBtiFHNxflN+Zqwyc4PyCE9DXITo2iyarINvu8t42vfiMp9h7R8B0cXT0WcQYijpWi
	 A4P/u8k+zhv/YoJwic71KELwkh5FgDhpXfmavI5BkE4YPER4dP5WmQi+utQBHRKX4Q
	 +8Yv3otvSb7wSCZx+A/Y7oh+SJQsZAuaCm1IKwME5qk2Bq5P7v3yDUp5a4JyL1IyTl
	 EriPQUq8cdYoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPtVpfWs0UBQ; Thu,  5 Jan 2023 03:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0463C610BB;
	Thu,  5 Jan 2023 03:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0463C610BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D151C1BF36C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 03:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA8FA819C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 03:19:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA8FA819C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sZH0nU-0iCC8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 03:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80636815CC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80636815CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 03:19:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="319809539"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="319809539"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 19:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="744073129"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="744073129"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jan 2023 19:18:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 19:18:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 19:18:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 19:18:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwIV3DL8aPaYeF+9DIfPo5w158mASbOK63aUQM6ENa5kMqitrAW/Fn5bDEOkz5YMlkY4gtFcY37OTfG/48oB0+jDQh1b6nbtTC5jNLrxExNqARYVsPoEhPG5KTVvBCWqVLR9Y8uudKfpaxDfbg4f3nX0BvR/ifDlObdtrCtoRzPfTqwx1pXgxnxxZGjlrllgV/a6IgRlUnmn87OnaSC5OA6OwK7kI6CUTu2WKoWoe+NXE6YLSgFHqH1Cn2TkAiri2fHLyQ0GRNqFOuTOHkGOxmJx09vBmDItesHt/+iFS4a+PA4YV0sdkC+8lO+cDLOnJGJgvxY1XyOZKVigWu9uYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QoStZHEOfH2xfxg0+jsCoBc2U8OrtBXLA7XR4V9AtdU=;
 b=mxVKTfPVQBC21sY5ZwwEiPtCJ3Pl5btAatNWT7HMJsHq3hv5baY4ku8XfEFmmqpnpEjvmqyFxUMGWggmhs4vBdKjxzF/dZXMjz6EuZW97iuoPrG/j4+yohUAK9b8Ud9KOFGJG54hzBL3H57FeIiAI4NowKqpC1xMJC0qFQDzjt16qfrYLBej4r/9fDUhPMjYMEQyVKoccf4Qx+ZMdvqY8FGQ+NYlCBRWP1fUtQnSLb2lRapYEarmEdMDfff/spOyzi1TaGWq6nqPKusnbKVdDlkZH8cKORoHnisrum0YeJbuKnMhyqmQ6WsW6+OLlhss6HzuIbMYcqerhMtLg2R3/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by PH8PR11MB7142.namprd11.prod.outlook.com (2603:10b6:510:22e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 03:18:56 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::39f1:b5ed:24d2:fa46]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::39f1:b5ed:24d2:fa46%6]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 03:18:56 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix crash when rebuild
 fails in i40e_xdp_setup
Thread-Index: AQHZFTjHXWUFZPqjs063JWXeQj55Ka6PPJlw
Date: Thu, 5 Jan 2023 03:18:56 +0000
Message-ID: <MN2PR11MB404545A061BCAD51414B8141EAFA9@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20221221123520.4192165-1-kamil.maziarz@intel.com>
In-Reply-To: <20221221123520.4192165-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|PH8PR11MB7142:EE_
x-ms-office365-filtering-correlation-id: 0238235e-e6ef-49f3-a8de-08daeecb94c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +oYGc+wMN1hlyp2zLHBLPj18UYpI1dV8rHFr26yGuE6RXdqN200wRrK1jKg0OP/QqAy6Jzq4n9SiYjC2mKZjOnAGSLRuH6jMrPuAUH0hYp/aFlSRmc6WVbXlbaJLozWXxsQVkApsCKHKLeJUAX7mjcpCeVTr8oMXQAq+XSgo3xarpdq3lkMf/7FAsHONbDz25wUCYue77MkZunNoiB7mgEOQF78UZv7gAew0DjAge6a2xgqAZ6xq0EcXpYUGydyEZICR4vJhUkvPnYsH596EXq43x2P4qdckrUI9Z44xWkbFszf3fvYu+/KkxhIZd1LxYGT7JppGVtd5LQ97i/cc2MSrJzPrsSvyZIj5kiD+YgBK/1dmM5BmD/GGgBhWw6NISczLErtuCUS7L79kLTKnvEX+8O4uazD2lT/ZhdOTWLxJlemP28Kia4A+bmaBuv6dPMtT92VHbGErDhC2bQzjOxIo/WRIXTAgb+g2aDW35QQ5VmHkSf1V4Jc5iqf3WLuPtiieI/e6Fi2S/NiQIbyHF2hkTMCdEo/JUkhUSGfLcgCpwNA3oaA/XA79+595NTVzuize7Kl6ajV7l+mFhmyKymN7gzGF+1+d/LwqtLi8kwCPWJ7S2/5BgSGuCIXg+IYhF6DBeBV1HZOmGi3nOT+zt8XHn8fFIvpql99XVTOZ2jeTa2iSAIhODvfEda7n9rjCaav5G+SLeWfHQf3ZI4UXxw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(366004)(39860400002)(376002)(451199015)(38100700002)(82960400001)(122000001)(33656002)(66446008)(38070700005)(66476007)(8676002)(76116006)(64756008)(4326008)(66946007)(54906003)(6916009)(86362001)(66556008)(41300700001)(6506007)(9686003)(55016003)(8936002)(52536014)(316002)(2906002)(5660300002)(83380400001)(71200400001)(7696005)(478600001)(186003)(107886003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1LtzNqk+PRKQRffE5Uf5s8EjtszwnLrNJ+HJzcbt7BhajBU7rpMGtLF63orW?=
 =?us-ascii?Q?uKIFqqoKyU8sjccSNQV6UWc/N1jYFrC43fX1IjStq85LpXzWYIycRwITXW4S?=
 =?us-ascii?Q?u/OU3t3tFyXH6wXE1RWLZ8+8UisbLolW5OU5kpCEB2i/bQFwQ+A/OfQ1TkmR?=
 =?us-ascii?Q?QrIZ1BkjZRG83WyAkpfC4NGpcbhtM/QxZgLYpbYMEcPSGt4ytyr4CcClh0/k?=
 =?us-ascii?Q?LBqwep+Wf1n2AyxQ+AatUdoOHpG/RpeD7UmCHd6H5Yq1I4Md5ZUvaPDvENpf?=
 =?us-ascii?Q?lXOjuGaOwIHIBW0DtAAUoX5wklNZpLWeLHiBOemALLh4AM+hFmG8nuX2y3y6?=
 =?us-ascii?Q?iNDJMnSkMgW++kzk8wwuwB1rV8QMILutyVhkwg5q9xxmGJr2859GJh83rqPv?=
 =?us-ascii?Q?XKrVyGo8svai2yhUc07znG+dRwjQXku18qoxw2EKtElm/PgCswIh1uPpwiwE?=
 =?us-ascii?Q?tj1eQSkkPrgyjQO15JrnQjl3vMkYAsvzF1JrEvgT5oadYIW59oeuOLJU3gtH?=
 =?us-ascii?Q?LdPFaYQSk+bZkXLugERpzmgrwUPSaYNMFfH0SjvNHNyzIo+COAwOfJxokz+9?=
 =?us-ascii?Q?qIwndXzUwfXXpzbwMIf0Bfy2d002EsTF1ENAwscGfARAF4YUnpjVucSwaGKY?=
 =?us-ascii?Q?B2Ij9ZTdgIhRYSgzlP+7jOGjAwRATzweUO3Lncq1fPTpjvnKKz8w2w/oco21?=
 =?us-ascii?Q?lAagnFMK0fGT3/S2k9mmUdrKfLG4BBLYX+uiKinotauymzggVXnY7Etzf7RC?=
 =?us-ascii?Q?2l0knSszgZp/4Ges5bxoYV7SGX+HNS/vbVz2Ux0BF64WhpFI6abL242SdzyI?=
 =?us-ascii?Q?Lt7Zi1vLHTShZYJflwJs2JWAAuO3ACkrTKbVzaGiWKnjYuxz4+ScaMoN+Jus?=
 =?us-ascii?Q?iBAD9DlViNhs3rKt1bR0djrXtsiKgqKwWXThSivWCjetF5k5QbZtBrM1a6BP?=
 =?us-ascii?Q?bAAD1G+cFdHmp/vA5dTmupoUK+H6plmvc5yzzFB9J4hJX4h5k4aKHB+6tejY?=
 =?us-ascii?Q?Pa2KMM+VrzMJDSpKhPZAWZdP6AAVUsTbNVY6Lukng55bD/GC4H3lx2isKMzK?=
 =?us-ascii?Q?icnSdHz5at2pkuIVYR7NHhaoWVwQQElkGSp2PsqmVtQFjyMwqyOBei3pkLbC?=
 =?us-ascii?Q?x6sGYFs/C0+5j7BTQaimvi9hfOs9u9pbl6hVkQ1PneXnH8nmAAn4z11M95IQ?=
 =?us-ascii?Q?9P8SYhJN/ANaYdJi9bOFF+KDMzeUN4LN4gPaE+afsdOajF+zPYzWoSXDdFuX?=
 =?us-ascii?Q?EcxRITHQAE5dH6Lex68dxPv4RqJUZTMvib/v8eaj/ayie5bplZrzqPeYi3uj?=
 =?us-ascii?Q?rRRk6fd5ERR8wRY4CulEBDvLHdHKYnOaZXv9TX6t87+V5MXtnf04QV6Bysk9?=
 =?us-ascii?Q?lLAqP9kFt3h2y4dhsvJyitjqnVASvDPh/DkH7W0GAr0qbbJhhOm0ami6j+ZI?=
 =?us-ascii?Q?4LBwh5byYAcEy7NT13Uz/Nfz4kVd4i46l4WDc5cF8iL/1SQ/E68LPAvbK97L?=
 =?us-ascii?Q?4JT4YK071Tpakp9BRjBN/jiI9QNIwiZ9R2tPNudzpiPVo2CXu3uAusd6TnBv?=
 =?us-ascii?Q?X4bR27XaNn0t7PehrqRDHCyRApmpwSWA6S/bQOvR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0238235e-e6ef-49f3-a8de-08daeecb94c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2023 03:18:56.7525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nCpmCjvxzwP9vzoui8uwcwonDs1MT9F7h8VfrEi2VBcTm1Opo/fMOpP3FSUgv87mnoRJHencS+mg3D2ht+O6sQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7142
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672888740; x=1704424740;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yX9cXHToLcUqxpeV7TXG2YcEUqSVndnx0Pus40ZY8yc=;
 b=N2dDR98f460kbUp9sadX3QuRDWhfVhZINQbZitM/6FwfZlyLG2BcPwc0
 t5d9rxax8EmEmNq36gVUWWSvIDigBoxYT4yS7V9OPyL4pOO/X1VxLMgfW
 v+jiI85Tl7EcAXBdxwdKyU2WwamUs17oCirYy+BZyjbVIOTXphRkyRj0o
 Nf8ZKMg/CoTkGlrcQdhFOVF50YWSffJSPKrY0uPSohwN0YVX+oOQghc5S
 Mvmfvca/BwJIMnJxe3XaAINr2sqIdZ3Yl/EzJ59B3BHnisgchtKYo6bu8
 RH1X5RwsAYYvdJGllbw5gNwlhl69yyiB4kWgJwhqwFxNDraSobtKnHxHE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N2dDR98f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix crash when rebuild
 fails in i40e_xdp_setup
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
Cc: "Nagraj, Shravan" <shravan.nagraj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Maziarz, Kamil
>Sent: 21 December 2022 18:05
>To: intel-wired-lan@lists.osuosl.org
>Cc: Maziarz, Kamil <kamil.maziarz@intel.com>; Sylwester Dziedziuch
><sylwesterx.dziedziuch@intel.com>; Staikov, Andrii <andrii.staikov@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix crash when rebuild fails in
>i40e_xdp_setup
>
>From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>
>When attaching XDP program on i40e driver there was a reset and rebuild of
>the interface to reconfigure the queues for XDP operation.
>If one of the steps of rebuild failed then the interface was left in incorrect state
>that could lead to a crash. If rebuild failed while getting capabilities from HW
>such crash occurs:
>
>capability discovery failed, err I40E_ERR_ADMIN_QUEUE_TIMEOUT aq_err OK
>BUG: unable to handle kernel NULL pointer dereference at
>0000000000000000 Call Trace:
>? i40e_reconfig_rss_queues+0x120/0x120 [i40e]
>  dev_xdp_install+0x70/0x100
>  dev_xdp_attach+0x1d7/0x530
>  dev_change_xdp_fd+0x1f4/0x230
>  do_setlink+0x45f/0xf30
>  ? irq_work_interrupt+0xa/0x20
>  ? __nla_validate_parse+0x12d/0x1a0
>  rtnl_setlink+0xb5/0x120
>  rtnetlink_rcv_msg+0x2b1/0x360
>  ? sock_has_perm+0x80/0xa0
>  ? rtnl_calcit.isra.42+0x120/0x120
>  netlink_rcv_skb+0x4c/0x120
>  netlink_unicast+0x196/0x230
>  netlink_sendmsg+0x204/0x3d0
>  sock_sendmsg+0x4c/0x50
>  __sys_sendto+0xee/0x160
>  ? handle_mm_fault+0xc1/0x1e0
>  ? syscall_trace_enter+0x1fb/0x2c0
>  ? __sys_setsockopt+0xd6/0x1d0
>  __x64_sys_sendto+0x24/0x30
>  do_syscall_64+0x5b/0x1a0
>  entry_SYSCALL_64_after_hwframe+0x65/0xca
>  RIP: 0033:0x7f3535d99781
>
>Fix this by removing reset and rebuild from i40e_xdp_setup and replace it by
>interface down, reconfigure queues and interface up. This way if any step fails
>the interface will remain in a correct state.
>
>Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
>Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
>Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>---
> v2: don't reinitialize rings while hotswapping program
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 144 +++++++++++++++-----
> 1 file changed, 108 insertions(+), 36 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
