Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C331EA844F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59F2D834F6;
	Thu, 10 Apr 2025 13:35:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWjTkvJNAu6H; Thu, 10 Apr 2025 13:35:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAC3983FB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744292134;
	bh=mSS8F9Bt7O420R69GdizR9GtTUkHYIPCcRgAGBO/GKM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xGZQOHGL0cByqGx0r3y92ex6RvzCMWctoThilzLnYXQnOV+/Et1KCvG4SXtG7aZNl
	 hUGF9JNSYJhOs4tGG5Fezi+ZLYNdAaw2MMVDLvZ9p3LncXWkSMQ0IdpTero2uJTFrR
	 VnsvDjcwA5w7J7pKcHT9KX3jUGtLuTvuvG8l2O7QWI5R9n3C7QN5MIEiubyP360ynW
	 5YVHWWnhiKlXVNWnQfsEtH7cp3fqlFFzBwXKdWUW7PqS6fPMXAGuJBjwn4JPHXiwLT
	 4A1bVu+4rBjC4y1KZcW2q13CkV0fWhHPDgiLOvoFsrwCYZ6Se1NBlnWf3XvYMX4NQP
	 HcphJ4aZKH2bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAC3983FB4;
	Thu, 10 Apr 2025 13:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BE073108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A348D83FB7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4xxWck94Pcfo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:35:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A8D26836F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8D26836F0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8D26836F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:35:32 +0000 (UTC)
X-CSE-ConnectionGUID: XhZRqsH8SF60GrekAs9tbQ==
X-CSE-MsgGUID: ipD792KeSlaQ24zV9XwAbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45950236"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45950236"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:35:31 -0700
X-CSE-ConnectionGUID: Ovc3Hr5hQN+A5MByPyvavQ==
X-CSE-MsgGUID: fKkI8F7NQH+u3DMntaWYmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128879457"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:35:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 06:35:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 06:35:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 06:34:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VdoxAO40+ii1CZwcPRuk11qVerOlPb7B+UefyuSJhTADdXq7PxusQ88QAo+bVbUuJ5LxO+xmDD63PDgMzyWbYfW6kkUAN7AC4kbVGLRgE3KLS55MY6Vs1nrBwi6mgN2ramoF7A5fFH2peGh+mnqSrXFxFEKHLX9MugfWZnO9Cti7RNN2A3jsr3aQdi5n2dspg3iSVog9mp35oOrMxVtwm1KkQ/b7+LMS+qxEcEFlx7XYSsavb7vBgxoPV3ss2TFUywzkdB8qcUCQGPwoYi8rFtn1rSXzMgtpKbws9DPqt46VDe4UjiDUb7TRteHLjdQ3nWE/cmHXHK/fTWLn+lZTEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mSS8F9Bt7O420R69GdizR9GtTUkHYIPCcRgAGBO/GKM=;
 b=wTMQhOWGws/hevicoElOihk5qKNGtJUHta4qGZTg5jp4Fw4Uinecp/5PHD3+pJBKQNW0yE3kGkqp2DCat6csjxsHYBxpP4YSrX4DVEZy1crret345szyUiw9GcPK+TZmi97rRfPPB/GUjffjOqMdBOJYJ16B35mJGo2NCnIqkUPfcMbF2ayvlu4ABOzZqQpnjN2ejVGYPhiUaV2q4zvldUmhJy0l45tlX/UjzRGkvJ+2KWNZAOfy96v2j+1OaDC4Sx+s3iLkErU3osW+NWlnNf9Syb2DAiJ/KFhtYpTlAdPlxin3ablq1lkEFvfTw6N38yCXU8dkHeR1tEPfom5/FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB8059.namprd11.prod.outlook.com (2603:10b6:510:24e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.23; Thu, 10 Apr
 2025 13:33:50 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8632.017; Thu, 10 Apr 2025
 13:33:50 +0000
Message-ID: <7e3f2eb8-b668-4ac5-8b49-43eebff2b3e0@intel.com>
Date: Thu, 10 Apr 2025 15:33:40 +0200
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Larysa Zaremba
 <larysa.zaremba@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, Michael Ellerman <mpe@ellerman.id.au>, "Maciej
 Fijalkowski" <maciej.fijalkowski@intel.com>, Lee Trager <lee@trager.us>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Sridhar Samudrala
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
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
 <Z_fAdLJ4quuP2lip@soc-5CG4396X81.clients.intel.com>
 <20250410132706.GR199604@unreal>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250410132706.GR199604@unreal>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0053.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: 099892ef-d49c-4d79-25c1-08dd783453cb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzZKYkhJT3R2c1VoaldFd1Zja2JaS1ZwNXdmUVFjOEI5bU5uODkyOFlWeld0?=
 =?utf-8?B?Wkl6V0hsZ2lIZHozd2VyeXhleThRaUE2T296RzFzOXFPcmNpSEcrV1ZqVThz?=
 =?utf-8?B?YTRQdlBpNWtOYisxa0IyM2VqWUIxRExaUURaOWZvSU9zT09CSUV4RWs0Q3Jr?=
 =?utf-8?B?bElrclBxc0pKK3ZheWhReVhjNnEwL2UzZEdlZmdua01SdTErN09WYis5RHM0?=
 =?utf-8?B?Q0g1bksrYS9aUEFCQTZCL2dUR21LbTJXYVM0clppd2dWSktoeXR1Zjc1SHBs?=
 =?utf-8?B?djdEdVk0Mlk2Q2gxMkRQRkNNMDNOeVY1dnV2WmZjYVMvNzdLc0tSYjhTWnJ1?=
 =?utf-8?B?enQveU16d2liRktQWVZrUDhDaGtqVWRWSG1DNVJxcGhkaDRPQmgzN291Z240?=
 =?utf-8?B?L0VmK0ZsdWs4ZTg4SDVPaE9pR3kyUk94MzUrbG12enJsSnNFRkdXRkplemU5?=
 =?utf-8?B?NTRwWG5lMldGTktRZFFkbE1mTU1LMkFEOWpZQ3gxTk9rcjhydmNxcEtFZGdV?=
 =?utf-8?B?WWYyaXJSV2pVTTRtZnlrTHQwSEh0OUFGZXUzc1cxNlRTVlZTWndQUDVtS0Z5?=
 =?utf-8?B?Y0JlSmpBZWZJL29SZnV5YVEzUWpLNDJWYnY4ZWNXbDZmZjMwTFlzZU1kYS9u?=
 =?utf-8?B?ZUgyRUt5cDhsYTQvcVB0ZVhUckNTYjk5Z2NzUmVJbGltYlZvZUJGY0Q4K1hp?=
 =?utf-8?B?Y2g5dFNLK0lRNU9PT3hQK1dUaUMrNFVxKzQwemlCbCs2Rm41b1p1b0ttUHBu?=
 =?utf-8?B?cEV2cFlWYStqMGRMWXdRUENuR1N6RHlheHFuZlpyeUxxTVJFbCszUmtnemdL?=
 =?utf-8?B?b21tU29uVThCK0tiRjdsK1dEam9LSE0wbzlXd0kwZ0IwWXZPdEthYVA3RU1X?=
 =?utf-8?B?TEtoT1czYlJWME1IbUpVakVYNXQ0aFVNNVJHd2o1blFBTnA1UEpHU0JRa05x?=
 =?utf-8?B?eXJMVUhBRVpiMldad2tlQ2lVODVWb2lOblNoaHAwcEJDaUMxVE1nS2M5RU1J?=
 =?utf-8?B?Y0JlTUNVRWF2OWZHYUl4d0tzaWV0ek5sNmdzS25rREVOR2hZdkp0U3pia01q?=
 =?utf-8?B?eDBJL0d3RmIvd1VwZHRaRVp4TVE4KzhBSjJRTWMrdFROMkhXUzFsek5IZVFH?=
 =?utf-8?B?dHNDcWJDZ0Njak9MMkp3YUZTUWNQM3NIRHhVQmlRNS94bGt1YUZ3cUdSUWFT?=
 =?utf-8?B?RS9hYysyL3F0Z1YrN1RvNUJvOVVBY1ZKYVR0WlhTV2pZbURWdUY0YlFsQlhZ?=
 =?utf-8?B?RGdWQ1pZZ2VmSjFQcUxQUjB2WVk3VDFwY056VTQ3RUQrVmI4RkljNE80VlEv?=
 =?utf-8?B?dUNwVzZwMXU0bDluWVZBSk9HMWtCQnFLbkw2M1Blb09sbmttYzI3eXJLRDFL?=
 =?utf-8?B?NFlLU21LREtkM3J4RmNCeitmcmpxb2k0YnFpQTlTdW5BTU9BV3BRUERuOGRL?=
 =?utf-8?B?NlpEQkk3VHRPSnBGenpORVRBeHVVRU16bk1ManlMelM0S0d4YVhTWHBNK2Js?=
 =?utf-8?B?UC9uaG1iWGptOXdLL3ZBS3hRY1Q3VmFUTzg1cFBaWmFaUE91c0VraWN6UlZP?=
 =?utf-8?B?VHRld3FBZFUrWFVIOXNVZTBPNVlPRmg4eVNYMEdSSktxemE1dWVoMU9VSkwv?=
 =?utf-8?B?bDBOQVJnaTdwc1RHTkVPUDROTXYwUTQ3dEN1alJ0WlBiV3ZoNjFkaWlhSFhY?=
 =?utf-8?B?UXBnMDFqQ2ZYTXBpWHF2UlRaRFdXOWNOZVIvZUFpSldtZ2NaOStUUFBYYU1C?=
 =?utf-8?B?QnM4WURHQ1BWdzFYRUdTclpiRnJCWnArOFNiU09VaEFScnV6S3loT1R5T3RO?=
 =?utf-8?B?UGd5M1RHOUpIUERGb2lzUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3ZUcy90dTVoc3JEdE9LMWhhZmhyYi9KMUJ4bzhnRnlZWkFUTFBObndPRVpF?=
 =?utf-8?B?SDMxVWhsWGtTRGhQeE9BQXQ0enZXaHBoY1BMNUlUbzBVbVRtT3Z4WE9BbkZu?=
 =?utf-8?B?MDE0aGJxS0JOYkdtRVpXaDB1RnltRXR4TXNaV045ZVh6dFdFSnZyM0F1NWRr?=
 =?utf-8?B?aFp0eTNuWmZPRkJpZkppa1A3ek05eWhQOExPZ2FENERiWjdUTnpnTFJQSXVa?=
 =?utf-8?B?SnBHOWg1TnVxaXE4WkpxVFNGYTNDN1lzd1VIbnZxRCtVMFZnU09weEU4aXZB?=
 =?utf-8?B?dHoxbE9Sa1JndEhFSm9oNFhPbEZsZ1hBWUhneU9qSUZyMlRBRGgxeEx3ZE1N?=
 =?utf-8?B?UnZ0aUFaWXI3K0RuaEF2T3ZvWnhvVWhxNW1MaUxGUXhtSXVxa3R3THphS3pa?=
 =?utf-8?B?NUxYR1pLa0wvRXc3SCtwVjhIZkhDTlYvcGQ5RSt0QTBnQXRXNkVXVTk5QmxN?=
 =?utf-8?B?RDhCcTJzbSsxLzh4MkU5SkJ1RFJuWW9sa3BEa1d2SzVFUnVYUW93eXZHMkdn?=
 =?utf-8?B?K3lzMkFLTFRBUDE5RS9kVDZWOHg5RWFsaW9rY2xOQktNUEt1NHF4ZS9zd3Bx?=
 =?utf-8?B?bUsrb1RZYlB3K2pWSWJpUkxyclBJSGw3TE1GNVRGdW5CcjJQay9LM3RqR1FQ?=
 =?utf-8?B?am85L3JEaElxUVp5YWpPb1Z0MUxvL09KQjVoUFFpQWNlVDNGQmFRemxzSGZ3?=
 =?utf-8?B?OWJvejdnWWFET2lHRWF6QmNvMFo5RmJ3dlc5Nlp3Z2lDQlBoWjVvdGQvU3VF?=
 =?utf-8?B?Sy9qTExCNU9Hd3J0QVUzNHErKzI0azVLUnhuT1VJTm1SNHBQRm5hSEswYUUv?=
 =?utf-8?B?SVVON0tzSytUUDVScmtvaVVIbURWZU4rY25CaWNZYVkrcU93T25ydWNlL0s5?=
 =?utf-8?B?WkVMdFc4WDZYTGovQWkxMzFXQnlNeDdFU1pweGZWT0tPbnFiN1NSNnMxYWZl?=
 =?utf-8?B?VzdjdVVBNEFqR05aYU5tVEZRV1FRd3hrRmJHOTJwQUlPWXYyL1gvd3REMHFI?=
 =?utf-8?B?cUowbmgyZkNiTVoxTEQ3TXpmKzVEMFdFT25RdXBiVzF1ZU5uZVNDRGVxOVhi?=
 =?utf-8?B?bCtieXM3UVRoWGEwT3dWY2ZnQ0RLcFBvekhGVWlNbW5peFNNbWttTlYwYmE4?=
 =?utf-8?B?bFE3WUdaTklBTFZlR1ZGOWVmODhldWoyMFBYZUxsbFBJN3huTm5vQWZUMG9Z?=
 =?utf-8?B?TXlRTWtDUHpsbmlrMjhJR0I1VXQwUW5hTHo2eUdqRTVuSnFGMXVLdW1QZVdw?=
 =?utf-8?B?QzNNc3gvYjJSYWtRRk05cmxPN3JVZ2dyRjM0SHR3blhieXZZT0pLN1BTMjEv?=
 =?utf-8?B?cHd4ZS9kQkhpeTczYnE2VjBwWVVOOU1vRTNyNWQxWk50SUFoMGszZW1QQzg5?=
 =?utf-8?B?YUtrL1hpNnNlNEFxZDd4WHh5QVhPaHZuOEVRTkFDRzlvalk4L2srMDE0VTY2?=
 =?utf-8?B?R1h4TVp1bDJMZk9hVWNkT29jNkRVcWRTZ2tIWEZpeFpMQlJpQ1ZMRVAwSFFC?=
 =?utf-8?B?WGQ5QllzSERHSld0WlNxVjRCaHA0SU1XM2xJZ211MEFiR0JOOFpscXVNQjh5?=
 =?utf-8?B?cjlXTllaSVhXYU9tQTdNcHNDdW55NFB3QWJ2K2NTNStXaGcxeVVzUkVTUkJZ?=
 =?utf-8?B?aTZIUDN0Z2MxWVJyYy9PeG85M0cralpOZDc0TjF4SGUvTnN3Q21DZWtrTVlT?=
 =?utf-8?B?SE9mMDZWaHVZdjluUnU2eFhsOWt4blVxWWpIUURZUFZyMk4zdjQxdzVjTWw2?=
 =?utf-8?B?OUhzMnZHaFcxeTBvTWJSMmticW5Ba2F2R0YrM2RSUlFobFlZUjJiMzBkVnVs?=
 =?utf-8?B?dnFFRElWVFJvdG8zZVhITWFYdVU1SjROajJyT0hPNHByeThXUmVPcE41dnFF?=
 =?utf-8?B?c2pGaGpoVFRFNkxXMEZJaEIyVDR6OFhCRURBakw1bE1TQ0ZWM3h6M015Ky84?=
 =?utf-8?B?SWx4OXBtTC9MYmpLbk0zWUM3RzdnS1EwZ1JhcnN5S0NCN2dnUGt0ZFNLQThx?=
 =?utf-8?B?VFZnWSsxRlJydUlDSUJlc1hDaDIrL09EZit0cWxRTFFMZWpscU16NzhiV1Yr?=
 =?utf-8?B?clBxdXV1T25BSkhnMlpUQnRFcklyN1U4d1JtcXprM0ZrdzJVMHNPSFhQdERI?=
 =?utf-8?B?eWh1Y0dHcVRiU29ROWUrbHFCa1NQYzIxWHdaM0QweHVxWFFqbWFpTk52YTBS?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 099892ef-d49c-4d79-25c1-08dd783453cb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 13:33:49.8896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nfZD+FLd1zscJNE6HjTYqKc3dp8cXyz3yV4jXcwDfxagum2vnTTOQGXOvt8xsYhHledeQ4ph9NkbfLX99/rfSxH9E+SQ1HAN7QHvoeLzbKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8059
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744292133; x=1775828133;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DGCbKXZZuNND5DXbRRgAcN50XCxCDtwXFXkQHGZcR9Y=;
 b=Z7B34herbBORwG8NVVj4rZI5GZXUkuVNlFoxdx41wmrWQOZTrieRKQky
 PT92vQ+NW5IpW5ecn8JQQpf0MNq945DsS7Lsx2ocr3t1a7XEN72lBcYZG
 IVkgY/UFnaC/aOEG8GAKgoc5CLokTblaMsnUUVa1sKJntpVvx9aT+aopS
 VIifDhlI/3zimv3S2TdBK+S1LbLRVmAwD+iegBTMpVAOtbtumopiWFxue
 advYOmkMDV6B5DjVI3dqZ0/KHzDoLN+o1kkFQSOtAzV0NDllPRc+9N7/1
 3roEDJwyjCfTiIzJOySL0t43aUF0oyNJOpZgjaun9U/1/xdd7p7NEytpG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z7B34her
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

From: Leon Romanovsky <leon@kernel.org>
Date: Thu, 10 Apr 2025 16:27:06 +0300

> On Thu, Apr 10, 2025 at 02:58:28PM +0200, Larysa Zaremba wrote:
>> On Thu, Apr 10, 2025 at 02:23:49PM +0300, Leon Romanovsky wrote:
>>> On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
>>>> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
>>>>> On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
>>>>>> From: Phani R Burra <phani.r.burra@intel.com>
>>>>>>
>>>>>> Libeth will now support control queue setup and configuration APIs.
>>>>>> These are mainly used for mailbox communication between drivers and
>>>>>> control plane.
>>>>>>
>>>>>> Make use of the page pool support for managing controlq buffers.
>>>>>
>>>>> <...>
>>>>>
>>>>>>  libeth-y			:= rx.o
>>>>>>  
>>>>>> +obj-$(CONFIG_LIBETH_CP)		+= libeth_cp.o
>>>>>> +
>>>>>> +libeth_cp-y			:= controlq.o
>>>>>
>>>>> So why did you create separate module for it?
>>>>> Now you have pci -> libeth -> libeth_cp -> ixd, with the potential races between ixd and libeth, am I right?
>>>>>
>>>>
>>>> I am not sure what kind of races do you mean, all libeth modules themselves are 
>>>> stateless and will stay this way [0], all used data is owned by drivers.
>>>
>>> Somehow such separation doesn't truly work. There are multiple syzkaller
>>> reports per-cycle where module A tries to access module C, which already
>>> doesn't exist because it was proxied through module B.
>>
>> Are there similar reports for libeth and libie modules when iavf is enabled?
> 
> To get such report, syzkaller should run on physical iavf, it looks like it doesn't.
> Did I miss it here?
> https://syzkaller.appspot.com/upstream/s/net
> 
>> It is basically the same hierarchy. (iavf uses both libeth and libie, libie 
>> depends on libeth).
>>
>> I am just trying to understand, is this a regular situation or did I just mess 
>> smth up?
> 
> My review comment was general one. It is almost impossible to review
> this newly proposed architecture split for correctness.
> 
>>
>>>
>>>>
>>>> As for the module separation, I think there is no harm in keeping it modular. 
>>>
>>> Syzkaller reports disagree with you. 
>>>
>>
>> Could you please share them?
> 
> It is not an easy question to answer, because all these reports are complaining
> about some wrong locking order or NULL-pointer access. You will never know if
> it is because of programming or design error.
> 
> As an approximate example, see commits a27c6f46dcec ("RDMA/bnxt_re: Fix an issue in bnxt_re_async_notifier")
> and f0df225d12fc ("RDMA/bnxt_re: Add sanity checks on rdev validity").
> At the first glance, they look unrelated to our discussion, however
> they can serve as an example or races between deinit/disable paths in
> parent module vs. child.

Unrelated. At first, you were talking about module dependencies, now
you're talking about struct device etc dependencies, which is a
completely different thing.

As already said, libeth is stateless, so the latter one can't happen.
The former one is impossible at all. As long as at least 1 child module
is loaded, you can't unload the parent. And load/unload is serialized,
see module core code.

[...]

>> We did not think this would be a problem, intel has a tradition of calling the 
>> modules pretty ambiguously.
> 
> I know and it is worth to be changed.

Out of scope of this series.

Thanks,
Olek
