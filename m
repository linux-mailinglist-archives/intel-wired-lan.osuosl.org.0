Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED78EA84582
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 16:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A55A58126E;
	Thu, 10 Apr 2025 14:00:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eg3lXJt9uyIv; Thu, 10 Apr 2025 14:00:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D63580444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744293603;
	bh=ueLv7IXSUYHz5EZPhoec7TK9TC7txqdW9k72V/ZrlQw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wWPcr4CNI0VTp55dkhoa4hF4JnFUE4WZkcMZYiVVyms/+hKKpUj92gTR5ti0dv2XG
	 4qg4i2kBMIACp/2txVNFXS5exzuPfZp+FWtcynu3L35j/W7hCzBXJIO4rflp3s5w7X
	 EgPtv21SZbY9q04nGK8HCafGSm88IitgkFt016HI1JpBWuJxVuhApIPTCDTEC9EuEn
	 D0yVXsRED2G9g5JVC7v0e2R2q/rKOvHit3d6y7wAQHZivSSH7SF3wnOTqESRgiL57K
	 zp9WjE21/q6RzgQoB/5X/KLKXnPLVrhw+DlRiV9a0igZgNL4sc5ruk3KgmS3mfpTPe
	 CLFQ5FHhE2a0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D63580444;
	Thu, 10 Apr 2025 14:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CA80138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 230524026D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:00:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eM27d2fguoI0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 14:00:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B37141EBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B37141EBC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B37141EBC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:00:00 +0000 (UTC)
X-CSE-ConnectionGUID: fxgq8BDwSaS+N09S0ewfoA==
X-CSE-MsgGUID: dakNEp0jRcS3LJArirflrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45942846"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45942846"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:59:59 -0700
X-CSE-ConnectionGUID: wje5H0CJQuiHtj4GMe7NTA==
X-CSE-MsgGUID: d3udJIB/Qiy9gPzt265Y+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="152091581"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:59:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 06:59:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 06:59:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 06:59:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y9UyUna/vBxSuN0hiy3n+d1LhrccVDZDXhYc3jaBoif/mVdC9YnCPNcIxaITUPT6TTJ5f5pEQ1nQPuUv0G5W0wOFySXASuW6m1GaQdNzseU9yaBnUYz2pggXwTLMqxCUzUu91PVQuY7AE1EiA7dpj1HZID0LB1XMf/dXXGtyeNMdvWxIPzo6mNjQPV/csB1Zdd30LzlLLHX1FLLdqKRXFrgpoAZipUZJ54aR1JEX80LUNgHnR2AbS+Z6CScWENf1PhsSR0kRioiNqDudO9nFS+nGAnRp9Ov9ygk6hj7hDw8swwGhVt3iF78xW3yJsRr7pmRHzGGcqe8AES/xt1zajg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ueLv7IXSUYHz5EZPhoec7TK9TC7txqdW9k72V/ZrlQw=;
 b=qufLwdnBiSEwVqbdHSVYFlPAm5ttVXVXaj5hc3gdtg0oh402hTMoZIVBpmi0g39OzzV22zbuTKa0F/iBLP9F3x9RLm7bOABg22P3SEdYRlFssiZaZe+E0bQKa8eWIL4uRrB2kmq/fNtVtbyL+YUzsHzJL261ROc4pBUWh+3EaMtFObcFsh0h0Gkgyp+c41pVbivyuwVvaw5fRJZBgaMQtlsSzN8I/w3XJB/0UxkyqB72Tlrie3Yl5LAMxfUhfTLNPiAR752TQMUsWPL6pl8u8ULAJGlAJe8utW8bJ5bs2ts231Grwp78UWBd0jBJlkzL5uLJZMlNnVO4kjRvoGTbaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by DS7PR11MB8781.namprd11.prod.outlook.com (2603:10b6:8:256::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.25; Thu, 10 Apr
 2025 13:59:35 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8606.029; Thu, 10 Apr 2025
 13:59:34 +0000
Date: Thu, 10 Apr 2025 15:59:23 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Leon Romanovsky <leon@kernel.org>
CC: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Michael Ellerman <mpe@ellerman.id.au>, Maciej
 Fijalkowski <maciej.fijalkowski@intel.com>, Lee Trager <lee@trager.us>,
 "Madhavan Srinivasan" <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, Phani R Burra
 <phani.r.burra@intel.com>
Message-ID: <Z_fOu3veEUcPUxuh@soc-5CG4396X81.clients.intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
 <c1ff0342-4fe9-44ec-a212-9f547e333a5e@intel.com>
 <20250410134443.GS199604@unreal>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250410134443.GS199604@unreal>
X-ClientProxiedBy: WA0P291CA0021.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::25) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|DS7PR11MB8781:EE_
X-MS-Office365-Filtering-Correlation-Id: 35de3a06-4f35-42e7-a532-08dd7837ecaa
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|10070799003|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZGw6GQi3X5EWf8mdUoE8MDkZUnvbrb7blfmStnMaXjUk+KNQ4xOK1GnZmSz2?=
 =?us-ascii?Q?8wj7ZEa/lRIXAJ1oKyjGFgoOCmgv0CgIKl2s1u0/9wDLK4WHBIzm3FzpzWFu?=
 =?us-ascii?Q?a9T24rJM7MJ7YlqRyfuQwtjsnANOJHgLZ42YniQ3sA3AHLd7bRrOxRRq3XWV?=
 =?us-ascii?Q?2bNGb7QzjKAUVYkiaBFSJ4IVNTb3Ro1VF/euDRZ4Bj8TKs878hcGnBUoFySO?=
 =?us-ascii?Q?AStAR3shkJXneN+gzIwxEtlBB4D9fZf8EM5ICg4ZKwiNKowZn2MqDL5mcPJr?=
 =?us-ascii?Q?HpOuMqGbDECQUTLnuC3dYxCsssYH9eHvH9+lFp4zrLGUyI6DcZk8qIxCxfJk?=
 =?us-ascii?Q?owTt8dHGSwP7L0tavkUtXJKEm4lL7MdvMux4JqFGe4BfF4Ul+4274zkXrDUq?=
 =?us-ascii?Q?Fl4fbZzzJuCH0ykFSQlKOR8VCVLJiGzQqsT0uoRdi0f3fPKMWm5sUlo8SLsS?=
 =?us-ascii?Q?ed4qYeebVmGfJ2Sx/SUCCaWf+JWndFfVTbuWEt6/Pi+TgzN2fQqQMtfalzZr?=
 =?us-ascii?Q?AyEidI4Ola97RjgqTUJwqngarjIB/vreGwjYJfb/YW5yXEKDn4uVJScH1UiM?=
 =?us-ascii?Q?iD2CUC1EUXWKYMcAGEpgsBhW6JzpfSAEITjcYBITjEvOWbFUSHazhIdcEGub?=
 =?us-ascii?Q?vcY9C9Cbr9NbBIrUrFEGe4uZkt/gF42ttwOIOLyJeydkuPs8yJbImWxQ4Mfj?=
 =?us-ascii?Q?iWGGS8n9X5pGpQM3nCnyJ4Hhdv+LNiUOWHQY96xoRenIQkkmdL+t7KyjQgef?=
 =?us-ascii?Q?Ru5NGOOHko1tUSnT865yr90A6sXkhLbzM0LOdlkaMxCSnjBJz7OXwUhZJpU1?=
 =?us-ascii?Q?gXDsBzsXfhVN5TYhArkSBJ1y85G48SNgGZ6Ga/HXM5qc1JsntaM82wLwPank?=
 =?us-ascii?Q?FY8H5qeDHsJc7tJawW7z+opQf/7fMuiK6SuHLvoJgsx12wI7GpZfUJ3sVBVU?=
 =?us-ascii?Q?spZmUZs1CgBhaWOH6KZUGV3S7ZCeyTmo1QRX/jdB5BCXqd8zCozbajW5tBD8?=
 =?us-ascii?Q?0Un9eRRYz+a5vLWzBeXxeSxwx2Vp2PNn/yPcXzvr2kARs5YAR+SUdnapESCr?=
 =?us-ascii?Q?2o86YdR+9wanMYmV2H1AkS+lSk3KGkzm0/ON+mA3QnWb38crgWtrvCtIKYTg?=
 =?us-ascii?Q?7VYydlFCbxiAUKYIpNSmsDod6a9tXXhwnkdpmIjhZ4+tSCupvB8lneS9b1ad?=
 =?us-ascii?Q?lBE8Zfrcc5sHYxkFch2bKqYT1jIVXWeupLUHJ7lCF25yjUp3I0+PKKyHmyOE?=
 =?us-ascii?Q?01QdADOAXjjcFFOGZxRnwXjj7z3J/dmii0XQKfOOWBWQ12eAuWPByMXGSPd3?=
 =?us-ascii?Q?aHEFDANXj2Ab+bvhf6/67SHX84EDlYevD5eYs64M8NnVGRchYr2YW/wvp31z?=
 =?us-ascii?Q?W+zBms7DLc5uzbCFjT+FMBuJHhzvhMvpOEOilPBweS7qLCG9avhrpUgLEpMd?=
 =?us-ascii?Q?dRHGn0HZ0SI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(10070799003)(366016)(1800799024)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pYTJyKFCVU4IBYa5Qf4H/5WKgbid3AUC3G/IaqPkYcw4Bpzav9zmOhaUcOrH?=
 =?us-ascii?Q?jtkViZdLiJPSYxr6Z0x7nQANxylLFtlw3FDjOjkzlkfdE2S0k2QuZnKS+Saq?=
 =?us-ascii?Q?ompmD9MU0k4RlTZgfTR09Fz7Z8vuNNppkoQwnd8CSiATS4tjaUBUBt/iNKok?=
 =?us-ascii?Q?xL/YkCdFABcmy0EKFZWxjd/Hm2oSiWI5/Q34HJQcd5DFLK5FLob1zAJvHfkd?=
 =?us-ascii?Q?C7wogoxK9ItkY80CUQg75cbDnlNJCYs+3L5lB0FkYf4CZuaEixAP7Np7UDet?=
 =?us-ascii?Q?tDs5Lyj+I2OkQfqIdP6vSy0+cEqpHNwQ/e8LYn+ECcOwA+37c8tMI420U7qo?=
 =?us-ascii?Q?rXAShdRZSyFfFzEdLqr6wnzkhFtkg3v/vvRCEvw2qdPHCtBVUshcMiQPtmBK?=
 =?us-ascii?Q?WvhZZDN4cDYy5O5IsCzJuMZ5KuvvoqUHpse5OE3SiQwLNBdWY3XmKvfpDHy5?=
 =?us-ascii?Q?wZh7K/GLOMwRVOm73GWF4HoigsR+HgcMiOJBMXFZ9H1vuY7Q5xvzk0xZ9sZd?=
 =?us-ascii?Q?0aFDHy33xvmHdoVSqfgvBzFO+FKnhWSXVk2WnWHtCRbpL29syA9zdSP7a+bS?=
 =?us-ascii?Q?huVCxomoEzTrsy3dHVC7tyYfTMrpbFxYF9RV3iOBYKsmPNpU4plQsF7eeAXj?=
 =?us-ascii?Q?HaUcp7J5W2mJJFqzR5jkiWiOKf/IqTlsTgZPcN4wT4sul9YpE7wbTLKfouLA?=
 =?us-ascii?Q?iSFCr596YqGGnLjTtwHi2fBgSfUoLCrwc7hYecVYD31TqdosPwldz/pl/SNs?=
 =?us-ascii?Q?bZ7RnXmkXJ+GGZXpkHzk+HZaZvtEyghYDAgVZshpUMDvv9XKjPfDg8vMxW2L?=
 =?us-ascii?Q?OrVU3uHfb9//LPO9sEwpKliciDNngxng/JcAFgMUrNuTfJkzeB2NcWubEEWo?=
 =?us-ascii?Q?ImjOHZFAbsSN6NEiDBVNsZ3JPzQI7Qi9Mij/5ZWi4fKuDI/4CFlvDySfJcI5?=
 =?us-ascii?Q?NtQCeLTLpzVy0fde+c7f7Ms87vyddxaMk6mt7J77xMmMLyBdUo4bXwAfHxdl?=
 =?us-ascii?Q?bQMuCKAEQPGu3WrJNF4nN2d0e0mwHfhVC57dSAWrJDl5dC9DXM4BAeSxB9Q1?=
 =?us-ascii?Q?Ss0JzAlW7/x8pELq9uvKvDAWeYODymll9Nl1lvC8UPHZiyTNI/SAbTxrWnft?=
 =?us-ascii?Q?KiNkX5SeOyZwHf7IcL54O+cKipc5ZEbfrppw2X9+HZN8sOn34H7ZbLObYeYD?=
 =?us-ascii?Q?PecLWBSnUGNC+bULeyqTCxu9OaLu4FwugKj+SPXkwAWQTy4H7p4tOVihQlrp?=
 =?us-ascii?Q?4559Huunh2/ccAEGGJA2XzIjiTSnWpq7fNaC7+nvX7dkbuowlSfHAauk4Nu8?=
 =?us-ascii?Q?m6iiACNDYZHii0U5E5wTaOag31AZD/qUoR2WslKuBUhZgTJ4VB3/v1IJ0bGs?=
 =?us-ascii?Q?xV4AN1m7VKVcEZ17f6biqvxHU6pr/KR8AuJloKQsTjD3aUkEdaQR7kmTw/aj?=
 =?us-ascii?Q?Sg4bM0N4/9x5HtWh3LiwVtIguikX3yEpFZjBvT5fyxgVS8o9rk1wuUeUyoVV?=
 =?us-ascii?Q?n37GjUgh681HMq3eehHLsRnrhKn8fABTCH4q1fYGtwk5+sgwFANEuPIw7VnN?=
 =?us-ascii?Q?Gz3ad3rywUsLJq5lXqpibL93gMykQB3XYgpJpvAPwXbajfMJJLEAvd5xn/i0?=
 =?us-ascii?Q?AYY56JGN7iaZ9kux1i/v1VsOUIyGpLJDZv06xzbcmqSu9z9ZrUG4rjbF/EmE?=
 =?us-ascii?Q?3/bflw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35de3a06-4f35-42e7-a532-08dd7837ecaa
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 13:59:34.8422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I2Pk5zHx5jFT2HC2bPtyx2K3RpknmU2eHwOYJUg+fR39fs0Xo6CHQZ8KxMCdKcRwXYrPxtsaLKNyKBLlAwwy4y3JOv87O+6HyJERqJxgsiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744293600; x=1775829600;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rAL7jILwZilY5jaDPFI2Ta2x2K5JDkEJt+2vgIgkFGk=;
 b=IiHN4PVtFye2MlKiVLKVebNSIJEhaWleIQX5o97J+o5OgcSYkEbG3FaP
 oin1vB+plVNMWRd/nyk8hn2go0pfZwZUFDZf8XZoqRV0QPNrgRDPvAybs
 COn0GUKGLYXxqt3ooYsKxAqD9Eh7grBDcglG0qQu9F8gZkyXtnT0QTECG
 Yv8Xaf5tWrXVr5aE1edpi+xlSkeVk42Ase5wVXhDxORKPVB+rYNtHkJ0Y
 5bCnesLmdCFwkxdgljd3McZ0GFrXIyb9e2uZfy/yQLgU/76BbzfduXeVZ
 Cyd1+93Q3cY/tX08dI5CD2b6eDhFNaw2/FPXwzkjDxTAttJHdYslkdN+X
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IiHN4PVt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/14] libeth: add control
 queue support
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

On Thu, Apr 10, 2025 at 04:44:43PM +0300, Leon Romanovsky wrote:
> On Thu, Apr 10, 2025 at 03:05:19PM +0200, Alexander Lobakin wrote:
> > From: Leon Romanovsky <leon@kernel.org>
> > Date: Thu, 10 Apr 2025 14:23:49 +0300
> > 
> > > On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
> > >> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
> > >>> On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
> > >>>> From: Phani R Burra <phani.r.burra@intel.com>
> > >>>>
> > >>>> Libeth will now support control queue setup and configuration APIs.
> > >>>> These are mainly used for mailbox communication between drivers and
> > >>>> control plane.
> > >>>>
> > >>>> Make use of the page pool support for managing controlq buffers.
> 
> <...>
> 
> > >> Module dependencies are as follows:
> > >>
> > >> libeth_rx and libeth_pci do not depend on other modules.
> > >> libeth_cp depends on both libeth_rx and libeth_pci.
> > >> idpf directly uses libeth_pci, libeth_rx and libeth_cp.
> > >> ixd directly uses libeth_cp and libeth_pci.
> > > 
> > > You can do whatever module architecture for netdev devices, but if you
> > > plan to expose it to RDMA devices, I will vote against any deep layered
> > > module architecture for the drivers.
> > 
> > No plans for RDMA there.
> > 
> > Maybe link the whole kernel to one vmlinux then?
> 
> It seems that you didn't understand at all about what we are talking
> here. Please use the opportunity that you are working for the same
> company with Larysa and ask her offline. She understood perfectly about
> which modules we are talking.
>

While I do understand what kind of module relationship you consider problematic, 
I still struggle to understand why stateless lib hierarchy can be problematic. 
The fixes that you linked relate more to problematic resource sharing, of which 
libeth has none, it does not have its own memory or its own threads, this is 
just collection of data structures and functions.

> > 
> > > 
> > > BTW, please add some Intel prefix to the modules names, they shouldn't
> > > be called in generic names like libeth, e.t.c
> > 
> > Two modules with the same name can't exist within the kernel. libeth was
> > available and I haven't seen anyone wanting to take it. It's not common
> > at all to name a module starting with "lib".
> 
> Again, please talk with Larysa. ETH part is problematic in libeth name
> and not LIB.
> 
> Thanks
