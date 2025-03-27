Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D34FFA732D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Mar 2025 14:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94792849F1;
	Thu, 27 Mar 2025 13:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48xjAGNpZyN0; Thu, 27 Mar 2025 13:01:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1C9F849E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743080508;
	bh=RVTddWdb3GJv917o3NHT4zYOL2oPkWJByOgBEniz96M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qNiX1nfuuASnvPLzoC5L+FUaGDX8lnFhCR1Lyal/idgPrax26tK8q6CnTXFvP/8Qw
	 OQRxoAV3GlDdADzlERhc8NDkyt9M3iyO7C1JcY2ZbbygWx7hOl/6dxFU901joZLEYT
	 1aN4CComdQpPe1QjL5y7p8mT0b1fOEJpufMnrvbskimNXLFBA9NaYe7zopp0+cEPwP
	 zlMRUFNZYMa3rNIDgGJeVW/uItlLHyOUjDV6V5dt4Leb74FvTsB2VwTPYxhCz/jz3q
	 1cRwU164ea4OWuBcy/4MMH/xA8/TVEFiTLyNhlM3oAKBuCPBfGKz+rQN2W4TZhyneN
	 dHeiY22CoAsWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1C9F849E8;
	Thu, 27 Mar 2025 13:01:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 262B319A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23A2F406C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nG11al8kqAPR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Mar 2025 13:01:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4FA4F4074B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FA4F4074B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FA4F4074B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 13:01:45 +0000 (UTC)
X-CSE-ConnectionGUID: EtR1ICOGR2SeDMPsCV/TqA==
X-CSE-MsgGUID: y/0gx0gTT0uD12xpp+I7Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="48193571"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="48193571"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 06:01:44 -0700
X-CSE-ConnectionGUID: 5DnEu3xDQsuOWVPHAsGMkA==
X-CSE-MsgGUID: MiF5AMMSQoeelyDVfsVDmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125054699"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 06:01:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 06:01:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 06:01:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 06:01:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W3Cf7BN85Z+HvPbARalMEt5ry99Y8IhKpvoxYlq3e4cV0zL555IU07YQu1HdnlThOGVS1sJUTIpm9OX7aSKN78y8ZeWOPbHv7mhW3yjrPdExE4Ije27xqT+MiR16t4svpl5U+90/ChV4CmiyYF7DDZTdoBfdx3XTLwUxrz4yARm6rTJpxfMfcqdJe2F2l+Z8+FKt6PfJthXEDMmxEbLm/4yxNmz6+hKHGiskRIVUexD6Fkh1XppAjBYtDBODSGxiG+pefs1QR+9mRmi8mD+YSK2TNVwisckSg5hRpIQPXh8fUgwMAr+nmkynPOYs+l0ZTv4P0b3Z0sCKEKNs0W6O7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RVTddWdb3GJv917o3NHT4zYOL2oPkWJByOgBEniz96M=;
 b=wLRUxShR9wG225FnC0iRr8amHG9ro7WMs0k+Sk47i/nNflpdt2qOMHEXCfrZWJ/z7ygI87SCpkDl9zkM5gNzYvutVEpK1RUx4nIvOhZleaZ4hWtNkCis3eLyprZe9a8yhhojTYU8spHzm0wS/e3CfsH2BPKLJ71W1v+6xfB2oOCmul0sRqgLy5U9SJLp53XqnMae/3vscbYYcNeywkgBdvgPtVqSz4UaQNmpXAQ5VFrLkx+rlpoWnRgLmExpXdO5eUwSgZlhbbgYgRSFcDaUjCw7umK7srqg+tNQBsSym+8fp++An/Xlp5gFWF6v82r2szpQMjzYeL0ppFzvxUTp3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6310.namprd11.prod.outlook.com (2603:10b6:8:a7::12) by
 SJ2PR11MB8566.namprd11.prod.outlook.com (2603:10b6:a03:56e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 13:01:10 +0000
Received: from DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018]) by DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018%3]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 13:01:10 +0000
Message-ID: <45e4aae7-c3a1-4821-9833-fbb7c716aac6@intel.com>
Date: Thu, 27 Mar 2025 15:00:59 +0200
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Simon Horman <horms@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Furong Xu
 <0x1207@gmail.com>, Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Hariprasad Kelam
 <hkelam@marvell.com>, Xiaolei Wang <xiaolei.wang@windriver.com>, "Suraj
 Jaiswal" <quic_jsuraj@quicinc.com>, Kory Maincent
 <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>, Jesper Nilsson
 <jesper.nilsson@axis.com>, <linux-arm-kernel@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Serge Semin <fancer.lancer@gmail.com>
References: <20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com>
 <20250318030742.2567080-10-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250318030742.2567080-10-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6310:EE_|SJ2PR11MB8566:EE_
X-MS-Office365-Filtering-Correlation-Id: ae93d00d-7ced-466f-21d8-08dd6d2f71b7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWlJemFzRk8ydjhuUmF3SHZ1amlFSlJ6SFpmbTJRaTYxT2VGdDB4ZWp6aWFz?=
 =?utf-8?B?ekdobEN0dmdDWktwWEMzWVhEa1JhcGFvMlZXK0Z6aEVFUVF4RVRBSFlpUVFP?=
 =?utf-8?B?OUtBcGRBVW1QbUdhYzk4ckRoRWxhKy9PMlNFT1pFLzQ1SG43YXpjSWgxbFB3?=
 =?utf-8?B?U0RoT3hnRHl6K0dQYXF6WlpjRC9rKzBINkZqMWNXSTVWTTY1NVRHbk4xSDR2?=
 =?utf-8?B?MUJiUjJFNFFuc1poRzVEN1VKaWxUWHh0Rm9RcDdUbWtweWQ2cmRTOFQ5aDc3?=
 =?utf-8?B?dzlvazgyd3RqaWErcFZGbUY0VjEwMlBkQVN4K0FNeUJtaE1aQ3d2MW5wREgr?=
 =?utf-8?B?VW1SS2E0dy9Ddy9pZWt4Vkk4YWUyV2Fhb0RXWWJtSjNLR3lpUUQ4ODJtQmR5?=
 =?utf-8?B?TGVYQXo4SzBFR1B1M01LSlBJZFNqWm5COVFQUHNKa1ZUSEMzMjk0b2ZsZ3R1?=
 =?utf-8?B?NE5OSjJka2dsMWVhbkZtTllJT2tQZXRBeHNNSitYNmdnNkg3T1Q5dndsdE9S?=
 =?utf-8?B?ZHdmREpmRUFtcGt3YUlhMy9LQWJIQjU1ZVQyT21BRXIzMTdveTN6NDBzZEpL?=
 =?utf-8?B?VzBFZFhXMzRuckRqTitKems2QmM2aDR2MGc4dElMV1dFUlExdEpVai9MZlVF?=
 =?utf-8?B?aTlMZlNIcHRnaVdYKzNIQ1JXVXVXOXpwWVFheUZOdCtNcjYwZU56MXhMQytH?=
 =?utf-8?B?YkhCZjJJTUY0NUJNYTNLTUNpQ1MvL2xlb0RpVGZvZSsvOE9jUzFXWDVPTEVl?=
 =?utf-8?B?TEIwQWc0K3hiOVdpVjZSRVUrTnZJbFhqdUViczlGcXE2TXN6Ynd6NG5TQjVi?=
 =?utf-8?B?SlZ1d1hFTko0clUwUk01MklzRnRZUzBpOUd1ckxXWVFhOVZPdC9DcHYwR3Jk?=
 =?utf-8?B?SlJZYWZsOUVFREVQVmN1bUFxUi9SSVVOTm02WWZJMGE2ZVFGSFF4Z0JBZkM5?=
 =?utf-8?B?dDNmb1QwS3Z2YU9pWXU1OGdKU1hOZkJOWkZacThhZjNxT0JtTGFqcnF2MXQ1?=
 =?utf-8?B?YjA2a0lrelRjR0lPTEZRQy9rTkhSejlIdmdMUVNhUHNRbGowNkhNRXhrWmth?=
 =?utf-8?B?M0FORXNOUjZtMCtSSkUrSVp3Yi9VZjNuZWMxM0I4WG53dHRsQ09iOUQ1NHQx?=
 =?utf-8?B?NlFpS3ZHUndwMlpib3B3M09EYzZvQ0dFYVFpelN6blJWWENORFVreHROU2R5?=
 =?utf-8?B?L1Z2ajBzakRUZERnU2JJZitJcGkvUmh5Qmg0ZFBkSnRHTjl0dU9YblpSalFw?=
 =?utf-8?B?ZURtbW1rRTJFRlVCWE5iTlBGdHpjM1BPbG9JcnBlT2p1NFY1bTJDWVAwaFJs?=
 =?utf-8?B?ejNmT0o0eG9JaU8vTXQ4RmxKMnF3R0JPWENJRTVQL2RZOWZha083dDVWVmRv?=
 =?utf-8?B?Y3VNTm1sb0FPcW8xN0hYNFkwYWxvQjFtZlFvVk81ZXp6Ums3NlF5TUFQbWJR?=
 =?utf-8?B?N0hldlVlY1pIRmxVRzFFWlphOFZzRzNKbk9IUTJWWStJZGVWdURlYU9xMkox?=
 =?utf-8?B?aFdOOXA4dGJjYkhxaEp6eEd1QmMwaW1sd3J5WEpteTg4Ukc1YjBvUkx2UG1P?=
 =?utf-8?B?dEJyM0gvT2xrdUR5WUtrN2w5cUFNRWhsRmV4Qzhmd2trM2FCdE5IK3pZek9r?=
 =?utf-8?B?cDlxcGw4Qmp4Z0tiOGg1Ulp3TThQdnRHUXArTFIrbmRxeEdFbVplcmpSSG0w?=
 =?utf-8?B?TmhJL2NYa2NwblNjNVhMSlEvcDJDdDRsek41dllITHcxWkV4azFRNUtWN1lm?=
 =?utf-8?B?cmo1aFVGOUJrQUNHSzB5TVg5L2hHcVdZSklXdXdLWWdUa1VzODVyV25UN1Vh?=
 =?utf-8?B?OE96T1VKdk00MWpwSWxrQWRhVzNzaXArUkg2eERYakE4L2tHQ1MwaVJTa0Rm?=
 =?utf-8?B?d3F0UUJyeUM1MXgzVWhjRGVKYWdtNHJpSHhjTEJRaklMMThPZmNpazF2NXhz?=
 =?utf-8?Q?NxYrcHAucJM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6310.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3VGZmRYT0Uza2lCeklDOWRtUlo3aTErZS9zZnFTbnVRcHNOYWsrbzZDNWdZ?=
 =?utf-8?B?UWhGSEg1aFBNcldSc0prRVlNWWlLUzUzRXZ0RmZKM1pNNkZCSjJEdGU2anZL?=
 =?utf-8?B?c2xLemRkRHRMU2dMTXg4N0svamF2WndRZDNDdGp5MFlqaHBEN3BCckZBWlBN?=
 =?utf-8?B?TzdGeDNEdVZVblN1bEdrbE9JR2kxNURCR3hrZk9FZEVEckIyclZWZzRFa3Iy?=
 =?utf-8?B?MGR2L2JYakFpWnpxNFJORlovUG9mUzE4UFNWMkVTSHVQaElLZWt0QWROUE1J?=
 =?utf-8?B?Q0F0amk5SGl2YTVSL0VZbWZYY3RjbkdVMHNVSTdWVVNGL2NCeTR4eGNKalZn?=
 =?utf-8?B?T2VkeVo3T0puOGdzdjBuQjR5NmdjeE5MbEMra0pNK2ViWTNrcHNFK2l5Y2p2?=
 =?utf-8?B?djB4K1V4VklVWCtQckl6Wi9wTmhzanhUQm9tbDFDaDNuOC8rQUZ1Z3U2U1FD?=
 =?utf-8?B?NlBiOTM1VmVYSmdGNjBjdkVkUDNNQkJ4WEFQY1FLV0QxdUJucDh1SThhekNz?=
 =?utf-8?B?UmxTdXNMd1BRMndlQU13RXdERE1nQVlnSGY5NG5wUVFmeS9zcTFnNlVrL3h5?=
 =?utf-8?B?a013NFhYbk4xVnYzNmpCdUZxRlRHKzYxcTlicDljK3NmTEk0UHhtVmtqQytF?=
 =?utf-8?B?RFp6VHdTTEViR1RrQmY5RmlwM0hxRjVvNnA4TmFDMzg4a1QzYVgzdmdKUzIr?=
 =?utf-8?B?L1FvOGVEZ2NlSzhacUNSR1hOOXp5dWU2d0VnT0praUdNdFJUb2s3bndpRFhE?=
 =?utf-8?B?YnczTzl5dVlSSk5ZdTlKMTVDZHRiRmF6NDVlR0srUW82OFMzeHdOMC9GU1Qr?=
 =?utf-8?B?aUxra2xNbVJ1TUZGMWUycXV4Y1RvZ3pEUGNuVDhzVnYwQTRMeTUra204L01a?=
 =?utf-8?B?YVdZTk1YSExlYk5KZzR0eDdiNXBmZWpoeFJjelAvbWhqdFNRUjBDbUcycGcv?=
 =?utf-8?B?UFNOOENlQWJ6WTU4WU5ZdStaOUFLb1VJaG5qazZqbjlBMUVDNytkN1duUFdZ?=
 =?utf-8?B?SkJOeEtJWk9sOUxxUW5HWERieXNkTFN3NzFrWFR1aHd2c0lObmltQ2JBbFdG?=
 =?utf-8?B?ZlhHV1hQMTI4dTN0ZHNKQnJ1dWhFN1NhSm9tb2VuQnJqT0Fxdjh5MXNVMnQ0?=
 =?utf-8?B?eHBMQitzaGtjWE4wdWhMTjJXenFPczVWc0FoUnJKa3c2SVFOaEN3U2lKWUlw?=
 =?utf-8?B?UXNSaEhKUTVrb3JTQlF5NE9PRWNBS0pIZXZ2SktxbEE3U2trS2xac2p0VVJC?=
 =?utf-8?B?K2NKMW1XVU1zMGFSSUpJUG5PSGh6ZXpPUnFQbE5nbFRERWNaN09tSmRTNVdV?=
 =?utf-8?B?WG9hOFdLTGFsL2R2cDlVQkhBKzNCUitMdEg0VU43dm0vUmNYeGMwSWtOWGpt?=
 =?utf-8?B?aXV4ZFdoWG5TTDFpY0tVRnN3WTZKMVRyZWoyUVo1TUd4UHhldVFWVWpVL0Vj?=
 =?utf-8?B?WkJleFJBWXIwUkZjNkJsVllNTE1xS0s5YkdpaVJTY2hGRm1PQXZpdmd6MzVC?=
 =?utf-8?B?dGVnTjVRRTFxVGFhdGM3WmQ0c3E4TzNNVWRQZmhBSnNsUkgxM3d1L1NlVWRI?=
 =?utf-8?B?ZTJoSEozN3M3TVdkRDRvOXJzYkxTR0pUclljUzNHbnd1dlA1bnNyaVgzbHhD?=
 =?utf-8?B?QWNrRzRia0RRKzZCVS9MQ2tjNER2Vjh5ZDlyQzFIenJMOWwwM2hCYjY3NHFs?=
 =?utf-8?B?VnlHYVRYWGNxMFJYSHExNmJHY0hvbzVndzIvRVFIN295UkFXMnlRdEhZdTgz?=
 =?utf-8?B?eTkxUnZQdjRBeXhCQnZyZmphVzNab1FpZWRDdkRKckF1bjROWENlN3cyM250?=
 =?utf-8?B?NUJSeDRpblNobzNVZkRkOVZ0Rk1pdEROQXBKSldVUzZ0L2tYb1RwOE9SV3ds?=
 =?utf-8?B?VkVNbWMzWHM5OHo2OUF5WDJMaVF5SlNpaVAwQXRlWGVaQkNDYUNMU3JBbW9k?=
 =?utf-8?B?UmwvS09wVG1uMTdFRnNHRkluckRGcTloMWRPUEJRM3ZySHFnT0lwSTlFZGdR?=
 =?utf-8?B?VXNnY2VLRHVleEZuR0hRcG5rTTRzT0swMmM2dnNvZWhxeFVKTWdTT0UyNFJP?=
 =?utf-8?B?aUJhOFNNdXVUdnE5UTNWRWM3aGlZQmUwNy9yaHkyVkNra1M1Qmp3b1dmZ052?=
 =?utf-8?B?bEh0LzNia1hVaWVHd2IraEloSVRCOXFzaDU5OWR6RWJwQjE1TXk1VW5BWXlV?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae93d00d-7ced-466f-21d8-08dd6d2f71b7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2025 13:01:10.3892 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F5BbNTHz0rF2XUlxw39XUblXvfbCzRE26B0zVMgFE8bALyDm8IgSiRzqwAZy7cO7xgek+lFihPVgrNIa/AAcAd7go+PkRidIr+5rO/l2qws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8566
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743080506; x=1774616506;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RgvZgXiZy/29goaQfW/b6M8M6R+b2k6aZ8GQmenZrT4=;
 b=YV2F7Ktrzz5sm8wat8GMZG8BzpqKk38swL0bIeUBqIIOV8nQGbzfC3gJ
 ZofQNhXJ/1fTmMAGiiT3Kr0AFAhd7mvjpcqlI+jwFP3vod4QgIB753XZ2
 NdQbmgm4wJ4OuIQsNZtIUbDKYnwkggOPjdb2HIxE7Wfqzj5b5QUJbcW4I
 WppeY3w8xaZSg/IL259JZ9jteNx8PShn+jdTYwKB5XL2QWeb1pMIb2Zl4
 JJ+IeaovxgEwYaWontFWNSk9MC8ZPQencMSbOIGQ7EzMddXqI/HU3h6aZ
 mc782LAsrYz+YVU0RXgm2a9rQx428j8ESHP97uLl/7SwJeG6iRjyeN6Ea
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YV2F7Ktr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 09/14] igc: set the RX
 packet buffer size for TSN mode
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

On 18/03/2025 5:07, Faizal Rahim wrote:
> In preparation for supporting frame preemption, when entering TSN mode,
> set the receive packet buffer to 15KB for the Express MAC, 15KB for
> the Preemptible MAC and 2KB for the BMC.
> 
> References:
> I225/I226 SW User Manual, Section 4.7.9, Section 7.1.3.2, Section 8.3.1
> 
> The newly introduced macros follow the naming from the i226 SW User Manual
> for easy reference.
> 
> Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++++
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 25 ++++++++++++++++++++
>   2 files changed, 30 insertions(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
