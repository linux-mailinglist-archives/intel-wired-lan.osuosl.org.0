Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C66BC87D62C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 22:32:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FDD2417FE;
	Fri, 15 Mar 2024 21:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZFJ7nIl7XMx; Fri, 15 Mar 2024 21:31:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82364417FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710538314;
	bh=mmFeTWWTmq/dsVRvClaNo+Kr0luyuZu1vWDxgGc+d8U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iKQvYHb5OYSkVilvlPRKTvtlCl1Rn4W7cgY5DhR2LkncxhKYlt7nr/caahxeYHz2O
	 iPkcEmTDyZwjvx+fR29vWjP60Y3+LK20Mr86frngvC/G79BcJu1gv1MxCcXmdYJ+Ua
	 Pf5nhv/dJr6gwQewihoS4/haE8s8g6cZU5v/oSZgOil1DlcjaA4H9Li6LQNgPvCZmQ
	 m7bu7tRxuOzOT3wO4KKD2RCOiXi1byXlJZkbFEcjIG+LXyI5yTCHjDTzlFX+nF06XB
	 f7UEZ5BhAJr1YjvFdxz8btVB0UL5oONvgnJ4sRrD98mSxcZ6yY8QrvmtGw2IXoEUei
	 f/45nnMa3dBxg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82364417FB;
	Fri, 15 Mar 2024 21:31:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 220491BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 21:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19BEF60F4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 21:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2srl9ssb4h0r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 21:31:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E989060A6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E989060A6E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E989060A6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 21:31:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11014"; a="16076446"
X-IronPort-AV: E=Sophos;i="6.07,129,1708416000"; d="scan'208";a="16076446"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 14:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,129,1708416000"; d="scan'208";a="12727794"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Mar 2024 14:31:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Mar 2024 14:31:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Mar 2024 14:31:30 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Mar 2024 14:31:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kKFp4lxyMRIf98511wtzoGSfMVW7X5I41hOLKe5xJHdF2YnDakoDjhHmttkf05WTVgVMu6mT8x2Y/J7HduN/ApNuWUtuhWIBGL33GQDXp3fhIW17XwsDjwShMMw58bi94YtkQ7TaMAk8jRiY4Mqh/9+i6t8MZ8qsRqXAaupMCsPl4Sv+g6GQpKFj3xiwG9ieGfz/bcvCq5I2tcbsoFiIT/YLCQQke6z2vsR7LjuIPvexnaYXsbXLtpTvTAedkud7pZMxlN1yG1628i7nsR9PTZ+pNEMwGSZabnfeuoVbi8QboCe9JrgmDHTYZkFup11lCoP/lxzj0EG/aNpP/+vMsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mmFeTWWTmq/dsVRvClaNo+Kr0luyuZu1vWDxgGc+d8U=;
 b=kFyhahKzTu7pjci4GV5NnNhFV7g++B66oICHcjbCWRnvPA4t5l9KLJcb9zCQovvSxkWeDrSAv6XJ0u4/yLTgA6swRGF66QzwLdqCrTX60E4sYbRbnjn3+QUaugyy/cwR7556I2QB0Rj+g8mCJW3rtiQQhNUnXt0bDEhWLgturVHkTnf77yTlZ0frwrwrAMOCFDbCOx4XC+k4nFqoXHuBl/76S5/obGlWycMSbHniWXKGuXu/hsnQhY/bL7BLK3be8XKH0QoCp1I+uDV/dgEM8QHDaInHBfkqfdvvfFjik4g7kNG1bb4HJ6gQgtqqYkfy9cGsgDSEQBt2BCBFrkY2xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB7387.namprd11.prod.outlook.com (2603:10b6:208:421::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Fri, 15 Mar
 2024 21:31:26 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7362.019; Fri, 15 Mar 2024
 21:31:26 +0000
Message-ID: <26841417-aee6-a996-4602-fcc00875d604@intel.com>
Date: Fri, 15 Mar 2024 14:31:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20240315092042.145669-1-ivecera@redhat.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240315092042.145669-1-ivecera@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0059.namprd04.prod.outlook.com
 (2603:10b6:303:6a::34) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB7387:EE_
X-MS-Office365-Filtering-Correlation-Id: 6afb6e58-9873-4d68-2b26-08dc453744bf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7hMUjBPk+F7eymsRWsDgLyZd+muUghUhF10zr/GAGxVjfi829ycqLRl9Y8dFhdWuyW4EcVF/LK478Km9jxre3DJtRx8z30iw1CQ/IV1gjLhCtBmc4Q9+15AVmlpEIG/oKvr1M4m0y77vYEm0BO89cU7Rkdn0hQ/c5R6lsNdn/bJZkHkOtRkJzmq5aBFQg3tOiq9Ei9zuH58dppGZP8alCt/8BOZfeQtz9ze2JGbbpJULIKmpq0e/BJEYU1roZHzCoaRRh8cq52+ZqXHRTaIexF6x+il0wpEYjxgjxCsds4LhF7nmp2j0Rz3Ge7Fl1zr2nUTjtZrK8qSLBQuBQjXJaZ63F0l5E6Fu0sU8XDtGgYQ1b+P+NSTJjzAcc/muxQCxz6Nuhs+jFuGdfrRfM+r96y33oIcgs24n230WmoHsrGa5bDkPXv2aw3MxXO53q+YkqP6aC+qCq1GVvVjmn3Vwc+Bbf9q2ZNvjwaF3SnFHuzd872BVWTNa+LaDpVPyzR6gl8DNjOzbbaRmhn3mWKmQ9Onby+8LoyFJWdLMLSYoUJpuiCzPS+PBndJqyxlI/J6DXfbk7+v5+zhQXRPB2PKoXTY8EMQKMUda+luHtAZdEf8IMzAlz0y6xjUbYNp8Ln96ciOIeaWJZ+9POlKVx+b2lWS3B84qfevk4eXpp+Azceo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDMvOGlMUFpKdEZsRFI1VndsVHF4M3VDR0R2N2J0S3pNQlF0SkFYWWtub2Ix?=
 =?utf-8?B?VzZNdkRrendrbk10UHpVU0tPZXJrd3ZBNlVlVUFLK05INzlOY2R3VHhvdXhl?=
 =?utf-8?B?SU1WMStxT1VZVVgyQWluNEYwVnJRMnFMY1I3cXpFZHZ5YmJvQ1pnenhUM0NH?=
 =?utf-8?B?c1l5NFVuSlZPZ1lBRzl4RmhRUzdMY1dQNzE5YytuR2VhTGxVQk95MUxweGdD?=
 =?utf-8?B?ZENtVFNVWUxHcytMYW5Gb01QaEZ6Q1lLVExOa0dwYk1SWXJQZVRBK2MwVjlU?=
 =?utf-8?B?YlRGYzV0czdkN3NodERaUURQc2sxQzJENXpXWWtZem1rRkE5bWhvZVhkS0xM?=
 =?utf-8?B?Qk5lRFRORkNMcDN2SjZzZzZCbG5XTXVTT080ZXVXei9LdzZGRFpqMVdoQU9p?=
 =?utf-8?B?eHJBd24yQ0VMVXpacmc4bFJybjFPQWVZMjU5ZzA5RnYwMnpJYitVb1dVQ2NB?=
 =?utf-8?B?Y1hWaFJCWWVoUEY5TEUybGNPY0c3ZE5ZVXhNK2orM0ZpR0NjYUZBeU00N25y?=
 =?utf-8?B?YTh2RTZhTC93b0FGbFlBLyt3UkFaaXdhVy9FRXROcUNUcnAvdU82TWMvN3Qw?=
 =?utf-8?B?OHJDNW8xcHYzeHN0cHMrajhXV3hFN1NFTHl0NUhtekRmaTZPQThIM3JKdzdu?=
 =?utf-8?B?bGFnc0xsTWtydVl0V0VkK0lNZDRJY2ZUZlRpd0NwVjd2ZXVPdjVENDBNWStX?=
 =?utf-8?B?VGtncnR0SktoNmxBelQ3dU9ybUxnY3lCNkprOWpoV3NXSFBuRENKUTRKaXlY?=
 =?utf-8?B?dEdGdHRja3RYbU41UVRqRnRraktMT2FhekhXNVBkeDlVQWNFN0cxL3J0YjBy?=
 =?utf-8?B?Zng5S0Q0eEFLMWRaQ3I2SXI0TkVyZGRBczNseDBXbnZna200dVFzVFZwQ1pu?=
 =?utf-8?B?RmpKQUJjTGE5YVNQU0FwT291a1dkUWs1cy9TeUtTNVZscUtmTDg1T1NFbkk0?=
 =?utf-8?B?WmlDWHRUc3hpZk1VV08wZE42amJyb2JSTitOZTFXRG9RVmpLMWtZRUtlOFo0?=
 =?utf-8?B?T1lFd2dRTzJLZVlKRzArUXU1U2Rva1dabWw0eHBUZkkwZzFlWHp2K2xmRWQ2?=
 =?utf-8?B?L3pCRUlPY0x2c0VjcnUrODV1aTBsOHZpeVVqd2YvRlYxanFhdFoybStURFAz?=
 =?utf-8?B?TG9sT294MkRUTXVpUzhnWkRMSlErYXQwMWlueXEzVTVtRWlMZnAzaCtaUUsz?=
 =?utf-8?B?T3BBTFJ0WkJ0YzNDdjZ6S1doZFNlUTZ0dTBlUmdnMzRiTThPYk1nb1hSQ3Ix?=
 =?utf-8?B?Tm9sUkRZNEx2c0RBS0xEYXMrRWFRQ0RJYWczNStJOExYN2hQaGMxdythaUNT?=
 =?utf-8?B?RFhiSTJaRkNvRjlWbXYrYndnQy84ZmJZRnhDcWpYYVhmU1FKQ0hXR0l6cnFY?=
 =?utf-8?B?VXFKYmhwMXk1ZkVIZ1FGWGJkZGFkLytPdTA3c3VZNzl5R0JBQkgrZm0yN1ZB?=
 =?utf-8?B?SExwREEwdlYwb2tua2RjYUpHd3dTK0RNNDM2L0xHUzAzVGlIYXljaHlBUTg3?=
 =?utf-8?B?UTJWY1BNQWhzRmQrNEVzdFhSTWxaNTlUSmhJanhYd0U5UlRTSmgwYjFuekFr?=
 =?utf-8?B?Y21Ib1JDQTBtUU83VlI2WE5TdjB2TVBCYVc3NUNGV3dyeUh1L3ZrZ1JzNDk4?=
 =?utf-8?B?RzFZTmVPa1dHNjdGSFhSUVBoUzllTXB2Vm1KTVZzL2VJMDdhMDhsT1RDcXVD?=
 =?utf-8?B?SHpPREZqNEtzN2N3SURWSFdPK1U2cHl1ZDBtdzZFT2lXbjdDb3Urd0p3RzI0?=
 =?utf-8?B?czRoOHQ3THM5L2xKR25NTzU4TlZUejArZytDWkc4VWMybWxvMHd1NlVRb0JU?=
 =?utf-8?B?L1UyMkRLUnJSeTdjWm5hREhwZmdzT1ByNGYvQnVDWWp2ckloak1mMmJ4SUl0?=
 =?utf-8?B?c0kzT1NNMHN1NTYrZUxnYkx5TWYrRnFxU1NYQ2dtZ3VhSUExWFFVZ2NZVHlq?=
 =?utf-8?B?ejhIUW1MUlA3aHhJK2JpYmxqUUlrVGJtVk5GL3NGZ2NwanhJeDQvcjF1RnRm?=
 =?utf-8?B?elo2QURFYk1LQXpqVlFCSWRjYXMrdE0yRWtRb2lCa1BNcEFXN2piVG1yOCt4?=
 =?utf-8?B?bU1ZNXl2YWVDN2RLQThXL3N6dGtNQU50TW9VWXUrRFZYUVZkbmZYZ29CWjZy?=
 =?utf-8?B?RUJYbGVCNDd4RmRCQ01qT2hyTEk1TzVjdjh2SEsrb2VSZS9MdFlOS1VISjNE?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6afb6e58-9873-4d68-2b26-08dc453744bf
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 21:31:26.0587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ppPmdrZjWeSh3D+dX29fZBcS6xyQxNZhN1PhsWbZmLegMIYcIVpQZZLgLOGBS2dXRG3A0QPLNaIzmZI+q/zJQQgpluNsV/JrnKDoqQntgTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7387
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710538308; x=1742074308;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XuZsUKHzFxzgjpNRez2B6c6QGVYZ82Xo/4wIvrDKpPI=;
 b=FRNwpbucVWrZ0WNWUNtms5JGPACFwV2IxZXqNbCNa8inLTH33zLPc0ew
 4mFeLrCl6Nm6aYi5qTyjPYstpRG41cpWySkxAgwXwTuGvDDph+WGsoGXF
 6fkQPgnTgpo90aedIFX788jYSY3RMyTTTPgxkYKMdEhTYrXms/8XP5rca
 U8JckF5zT/2mw/FI9X25in/Hg+GLMRYF6kdhhmtWUzF/j7Q+0klPlor7u
 Nn0TcXvcIhxWYq7Bb9+AmnxDxsaVRbRTuww3AY4p+fqlT5XsfySSjLxb/
 iQNEBPNdnh8GoWu4VG1MlgcxClXUMt8D6GaJNNjhh/h8Z9BHZSlWmb5Af
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FRNwpbuc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Enforce software
 interrupt during busy-poll exit
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
Cc: aleksandr.loktionov@intel.com, open list <linux-kernel@vger.kernel.org>,
 pawel.chmielewski@intel.com, Eric Dumazet <edumazet@google.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Hugo Ferreira <hferreir@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/15/2024 2:20 AM, Ivan Vecera wrote:

...

> -static inline u32 i40e_buildreg_itr(const int type, u16 itr)
> +/**
> + * i40e_buildreg_itr - build a value for writing to I40E_PFINT_DYN_CTLN register
> + * @itr_idx - interrupt throttling index
> + * @interval - interrupt throttling interval value in usecs
> + * @force_swint - force software interrupt

nit: kdoc doesn't like this style

New warnings added
1a2,4
 > drivers/net/ethernet/intel/i40e/i40e_txrx.c:2650: warning: Function 
parameter or struct member 'itr_idx' not described in 'i40e_buildreg_itr'
 > drivers/net/ethernet/intel/i40e/i40e_txrx.c:2650: warning: Function 
parameter or struct member 'interval' not described in 'i40e_buildreg_itr'
 > drivers/net/ethernet/intel/i40e/i40e_txrx.c:2650: warning: Function 
parameter or struct member 'force_swint' not described in 
'i40e_buildreg_itr'
Per-file breakdown

Thanks,
Tony

> + *
> + * The function builds a value for I40E_PFINT_DYN_CTLN register that
> + * is used to update interrupt throttling interval for specified ITR index
> + * and optionally enforces a software interrupt. If the @itr_idx is equal
> + * to I40E_ITR_NONE then no interval change is applied and only @force_swint
> + * parameter is taken into account. If the interval change and enforced
> + * software interrupt are not requested then the built value just enables
> + * appropriate vector interrupt.
> + **/
> +static u32 i40e_buildreg_itr(enum i40e_dyn_idx itr_idx, u16 interval,
> +			     bool force_swint)
>   {
>   	u32 val;
>   

