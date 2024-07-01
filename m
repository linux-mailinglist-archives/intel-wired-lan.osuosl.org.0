Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 252E691D9CC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 10:18:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C578A81C46;
	Mon,  1 Jul 2024 08:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rM9pI85GnzGR; Mon,  1 Jul 2024 08:18:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBC7981C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719821914;
	bh=db9BEIcixXq99fS5nCfpxouaX0SaEpiomyoEj1Ff5nM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hrSPJDis4wA/YjYCFRe74dDOXtlyJS7NezA9y11rIlh+8r3Rv/VPkbrYK30+Dc1jW
	 +9xyI8OAHoOpqtaDei1t2i0MMKkYKcrTtCy9zokBcLSBqDSmA2u4JrtlndXPoqPdff
	 ARfGgZnlgf6m75j6fajz4pmZdl0Z6iFHTxlYo//wUhtYm+xzHwjsH3CdAB0C0U46aJ
	 7nUGrXviqkTnQhaSPp+JesU6Q6NZLsmzVllXCIXbObgz8PNhR5ZP0TfWAj+wN/lszI
	 +dj+1vNfj9qL6TpS0lb20g/weNioYRcoruPCb7yg2Qzqe62N+UGWkLLRaZ7SY0Xahc
	 H8SOsv+AUxe2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBC7981C67;
	Mon,  1 Jul 2024 08:18:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88EEF1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 08:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81DE84017C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 08:18:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IyMtcgbnPBOO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 08:18:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F6BA40104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F6BA40104
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F6BA40104
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 08:18:31 +0000 (UTC)
X-CSE-ConnectionGUID: iRKENewdRVy6azYzjCZjgQ==
X-CSE-MsgGUID: 5b5JwIJ/QkKhBLK4TTm7wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="16663222"
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="16663222"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 01:18:30 -0700
X-CSE-ConnectionGUID: 8Ow2FjJxRKWdE1Ui9FcCow==
X-CSE-MsgGUID: eIZFjlSJQF6FVa9jXxOoGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="82969882"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 01:18:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 01:18:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 01:18:29 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 01:18:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wa5KJMWGgFG10rVAftM5BrFYjTtO9zMZaJMNHzQMalGyuwtWEzsTx15w07X3w3YphwT6rINtYfdHSudKtijTNgLQkuZ+8graBFWp6+CIMDlMo+OaXhU85q9sG1sWygRretb25yYf7w43R9NHTjr4sIEW4UzNZhvH1PJfpxre6Cjl3MOQVWzgJwkNJycFVNIeT1saZIf/DkjcLJFIX0kv9cXocKZ69rns7L7FW50JgXfpL7su0YbgpSFMm/VOpzTX+AGrpO75aXGAWWwINpxFTZsKvMW+juP5MniOnfsVALtKbA8eXH40PiRCm1S90IONgV4hRVUEmD9zw39N8m+DcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=db9BEIcixXq99fS5nCfpxouaX0SaEpiomyoEj1Ff5nM=;
 b=Wtc7N/nbf5qnheOm/5aW2na1CwyfkZAv5q6FnitbNQDYpWhsaxF3BDgQwgWx2eLC4ryv7SJVbTt6DHv8f58uupPT+8mdNbtAwLKVbPgAWVes2QzAIZE/+PiAyyZVLdPOPa9M6bNDNg32yVqkOr1/KxgYThhd1eoEQ0TyOZ6kkZ5EoK9DGnz9rOLUMalrBRS4RtHD4RVEJTgDbqEbywrqxyCf0Y8r9WInc/c/mHrmtm74ATjYpCqAf+DcqskDIoEFKNJtl9IVW9ddDjfQiTgjRzRhBp+2OLsUSFGTG+88l9yfpD26ffZDopi6cku3QyxzH0BetUtvCZSKBuZXa6cUvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by LV8PR11MB8557.namprd11.prod.outlook.com (2603:10b6:408:1e8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Mon, 1 Jul
 2024 08:18:26 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 08:18:26 +0000
Message-ID: <ead9d3f5-5424-46d6-88c3-e670562f9c99@intel.com>
Date: Mon, 1 Jul 2024 10:18:21 +0200
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
References: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
 <20240626125456.27667-4-sergey.temerkhanov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240626125456.27667-4-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0074.eurprd04.prod.outlook.com
 (2603:10a6:802:2::45) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|LV8PR11MB8557:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dbfda13-7c35-4c76-c533-08dc99a661b3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3NLSG1lRS9xU0RuMGo3YTJiQXVOZXZ0dnE4emtvZFN1SjJUdnp4bnhPTnkr?=
 =?utf-8?B?aEp2NjlSazVKQXB0TlpSVU1ZNCtNR1JnZ1dXV0w5ZWpkcFVHdXdRWThvbTVo?=
 =?utf-8?B?WDQvM2VXOXNRZlJHUkpTVExNZUNrcGozZzBIcTc5OUpYL3N1V1NvTktrenBB?=
 =?utf-8?B?TmdLcVYrdFlMcUs1QnlXdGJ2UjR5SERLZDFLeWlCMFBKc2YxSEI2eGxBWGxm?=
 =?utf-8?B?aFBGclJtMWJPS0M5YlJjSGdaNnplUU1CNi9Sb2NnUEQxK3B6NUpDQU5uUE9w?=
 =?utf-8?B?QW1kNjZhMCtMZS94ZEpDakZBVHhUeHMzdmJiZm9xTmRERkJNNFRKZEliUjFV?=
 =?utf-8?B?RDJkM3BhVVhSakQ2NkV5N01BbVVxdXhQQjVreWhPQjV0TktZZlFwNHJLZ25k?=
 =?utf-8?B?bGxqTk5WcUtPV2NDdE4zd05WeHczUTlEclUvS1JUb2pESm5Tb3JPT0ptWDRm?=
 =?utf-8?B?bThidml1TUtlNm9ldzdVYzVBOU9FYTljSlExdTRRVWIzMnlGVDNkMG9UbVlK?=
 =?utf-8?B?K2xMbGViSTZOZFpMMXo4NjNMQnhrbDF2cjZHRzVPUVA3Z29CVE9ySkZUZGg3?=
 =?utf-8?B?L1VLekw0ZTVGMG5OOHEzeGptMGxJQWV1YzhUNTBCZzVIVEJaT0k5K3ZkQ0l5?=
 =?utf-8?B?Zk1lSmR1NHIvdXEzeVdGNmpPVmttZzBhbThPKzJpS1VuT1ZWaXRlWkVkWDVo?=
 =?utf-8?B?RGlaSGxCU2FacldsS0ZYWEtVN1pobFB3aUtNVmg0MmovNmRhUnBWOUNndFJH?=
 =?utf-8?B?YW5uc0FwWVhBRjA4THRYVnllQzVNdUZCV29GdHNDdCtIMUpQNGFFd0d3MTZ4?=
 =?utf-8?B?TkhGUmdwMlkvMmprMGtBMlJnYWZlbzN6UWp5T0E3NE45RnFEcEwxS3d1ZUlz?=
 =?utf-8?B?Z3d2WmdPVTZocGV6ZGxST1phTWZGeHVvOVhvdzJlNVUrSVpzRzBHTjA4RDlY?=
 =?utf-8?B?RlEreit6czZmTEx5eXdqbnlNY0p5VmVsbUx1QnVlOU1obkxSUWc5SmlaZzUx?=
 =?utf-8?B?cGFPLzQxNW40ZVAwRjRTLzZ3SGZnYmcvNE8vL0Z3UDZ3QStvRnlVRkxhcVlv?=
 =?utf-8?B?Q3FuMm5aOURhdVJ2NG9EcjdHR0JGcjlzWUVGSEo4UVF5UzloV3FuUzFqM3pV?=
 =?utf-8?B?Tzg5aGZmZ2Q3WTVFdi9rNzlXY3JoOS8zQ0lKN3I1QStIVi9vNWhtRnJySlYr?=
 =?utf-8?B?TkhBTkpKMTRyQUdTNkZCVGQxK3dCTWVOdXRMWU5sVFdlbmhuTFZKekVrR3hF?=
 =?utf-8?B?L3JZZWlYQnRMaFdQQ2tTWWlDWmtabTQ4TnBXK3dDWXR3c29sMS9ZbXN0Y3hD?=
 =?utf-8?B?VHk1VHFETTJ4ZEJGd2psTHRLbDNjdkVVRy9xSUdBd2pzaEN2TVRXaE5ubWQ4?=
 =?utf-8?B?aUdFQ2dZRzBJLzlTZkw2d2VOZnhISVEzOXdsbUFNWmVqd01BZDdKbXR1UlI0?=
 =?utf-8?B?SDl5b01hY0plS3FhUERaMTZ5L0cxd1g1M0REZlc3Y3dJUGdRNmFOZGYwdG1t?=
 =?utf-8?B?cy93a0xaeHZ1NFFtQXdSUWRkQXk0cy9EVFd1NjJBazlCR3FSTjNzdUNGVWlZ?=
 =?utf-8?B?eTB0am5jS1l6eXZZY2NPVFMwNitSNnpOVHIycm1rb2ExeHE3dmxkbFJHbmVr?=
 =?utf-8?B?R3dsY0xoaW4wK0UzaE05b0tOLzhGY1VZdGtJM29DOWJONnNISFVNYnlEaTdj?=
 =?utf-8?B?bXFmaGQ5RGZkVERTTXREZ2lOVmw5WE1OOGlWT2h5b0k3a09palFuMGtWR1Fy?=
 =?utf-8?B?Ly9DLzR1RWxGRmhmcFd4dGRGZjlTMHdtQ2g3MzVNU2dwaWFSdWEzL1RVVlV5?=
 =?utf-8?B?a1R1MEpsWTBjTTZDKzM3Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkoxcjVZREV1RDRlUW1Fc0Q1MWp2M0dGbnh6S09uN3dmU2NBb2JESlNjSk9h?=
 =?utf-8?B?bVhXTXZTVTZ4RXdrZkd6UktCR0lSMmx3a0tNTjVNRm5jRWxnN2NPMkdPWjY4?=
 =?utf-8?B?NW4xaWFTdFFzVTNIbXFIeGROZk5lbG9vaGRSRitub0VRZDRIakFDY0hJdkVD?=
 =?utf-8?B?R1N4L3B6cUdwS1V2V0xaWEhCWTdFR1pIV1NJcVBBTlg5MHFrSEpPNE04SWVu?=
 =?utf-8?B?VmtLSk4rZ24zSWE5aTNPUFFCUFlzeGtMSFNicVNKSzZLM2VCemVTeE1MclRZ?=
 =?utf-8?B?TktSWTVXdVc0S3RsRXJCazhnNEh0R2pKTjgxRDF5bDg3dE1icmFhbUlVS1h0?=
 =?utf-8?B?Tml2Z0pBTXd6cE5oL2VwbHQ1VDMwRW5tRStXVWpZb1duUVRWanVjeEt6N203?=
 =?utf-8?B?VUlwZXVNT3Npb3pkUWx0cFNQVUNvakpCb3N3cW5JMWFTbkkxaUZEeDFwV1E0?=
 =?utf-8?B?RkV4SkRlWFdYa2tHU1JjYVgzRE1ZRzcwdWJDRlRjR1ZTOGxqRlhqTGVscDg5?=
 =?utf-8?B?a1RIeDhMOEV3OSswYXFwWllNVC9nSnJqbC8xUDVUY3RhYjZWc0I0SzhLYUJ4?=
 =?utf-8?B?bVFueFo4QjdhVFBZd0dmd1E0ZDM2dnpvVjlFT0xhLys1WGNvWlc4QzZqSTgr?=
 =?utf-8?B?amxMaXZtYmFESzRiMWZCUm43Q3pVWUIwM2x3UEdRc1NBMyt0dGozZHpEZHRx?=
 =?utf-8?B?c2xkU0NnWFRlMndJQ2RmaS9ualgrTWhWOXQ2UENYQk4xRTR1eWpha1lBUEhp?=
 =?utf-8?B?UE9QYTRCMWtPMURSdEc1MEp2ZXVyc3pmMjF3UmtoNWlRK0VxK2ZLcGIxQjY0?=
 =?utf-8?B?NjVTWGJ6bDBCU0owZ1l1eUJ4b0NTYzJabEltc3VlMTRwRFZNY0d4dXBIQllM?=
 =?utf-8?B?RDJRY2VoMXgxNmdqWk5JWk5nSzIxZDFRWXFSdnY2S0FSZUNzUHRDTWZwN3Jv?=
 =?utf-8?B?NW9hN2lFbWpXTHVFc2l3eHhaNW1IQ1F1bDdrRmVGdExTSUw3OXg5MTFmeWd0?=
 =?utf-8?B?aVIyWHdBZEtRMTREYXRGa3RjZndBQnlYaTBqSit5akNVelhkcElzdWtmNDV0?=
 =?utf-8?B?Y2VhQXVCY0Z2b0ZYVERNRHE1TUp4dTJNVStHQWE0RkxYdmJGSzY2eWFwcWsz?=
 =?utf-8?B?cDZqTEl6U2cwVnBkQlQ2VWhsVFdsNmRUV3YxcjVocFYxbkh0Qk1iQzJOODFW?=
 =?utf-8?B?NFdlL0d3VSt6KzZDc0hIZWRPdk9wL21OWmxDSVJ5ang2SGIvWkZtcHRLbDFi?=
 =?utf-8?B?c2dxQXhLQWpNc1MzWFhyblJOU2tpUTRoYjlBclBTZUpXL0pOdDNqUDBJOUdh?=
 =?utf-8?B?blVrcU5PMFdvT1hTQXZhUldBdmVyMjJNYi9jeDAvU3B5T0YvUGtzVTRWY2J6?=
 =?utf-8?B?YzloeEJIc0Fla011MFRndGE1cFhzc3FSaVkxQzFiekZJdHlKMmpGTXFNNUpu?=
 =?utf-8?B?OEpkMkJDcmVQOTN1cHZpOU1SZktYb0oxTUJyOUNYQTRScFpjMXczN1VTTDhu?=
 =?utf-8?B?eC9GTExsd1dEcUtydGVHenAvbWJBOFh6UTZMS0NscU9jUzg5OTVRa1FyMm9Q?=
 =?utf-8?B?Wm96d29nQkl5djFFM0VveXVRcEtrZVY5ZGM4eXljUmR5YmI3Q0d6TWVWaDJp?=
 =?utf-8?B?Ymk3bi9mN0c4WW15dmNqdjk3ZER0N3FoSHdhS1VHVVdmYmJWR3VzY2QzeWZ6?=
 =?utf-8?B?TVF5ZGFZQUJNY0RldHFKUjdYeWtoOW04N2FHVUh6K0YrbkRVa1pVOXkrZXFN?=
 =?utf-8?B?V1BCMzVLUG43ejMxV282b3dQV0JHZ1ZLYU5Vd3dmR3VZZlZqakxaT0J5K0FS?=
 =?utf-8?B?dUdmZDdndmQ0YUd6SGlVR05Ta09mMklIYlEzd2VOZWNVTzd6SmhtY3A3elNB?=
 =?utf-8?B?MVo1Q0RLZG9GUWMyYkxkOVM0RU5FM3hNSmJYSDgrL1pKVFNwV0FMUUhTaDln?=
 =?utf-8?B?bXo4WDk5WjdIc25CdnlibjBOQ20xdnJ1WFVveEl1UzBZVkVjOVdMVXJUMnBE?=
 =?utf-8?B?RzB0QVVwaVJXRWxOdHdiZUY5RGJhanlPdVV0OXp5cGYxZzZVdkdEaG5LZEs4?=
 =?utf-8?B?N3k4bHJkU2VVYUhWK0xOWUVENFdGdmVGa1RFMWVGcCtEaEV3cXhpQ1J0Zisz?=
 =?utf-8?B?SGo3UWJIckYyOWRpT3RkOUU0MWMzU1VWTy9ZY3doK3A0ZDZJdUI2b01VSExm?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dbfda13-7c35-4c76-c533-08dc99a661b3
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 08:18:26.3520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AwfLFUCP0jlkFNGyddRDfA4Y3QCbHLu33h7JCpPUPpV9/AEcfEzx8SlSaCZmYPwBdFaPJGd+MB2zsZxW3A4OYE2H3RlqOLy9Xbuse4v7cJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8557
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719821911; x=1751357911;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MnfTOqG8SZRnMiVCk7fODetiI/UL6J6HWftTcV71OmU=;
 b=ZTSFb21k3K6aBdyTWRrjKqTyZryWH+UEK7VH2ZJpXo61+qKNZNLdMdKZ
 O8NyLWyyXstyKRp7sBf+07zclxg/II7Ts50RGhjhp/ObMidWsJG0ONaG/
 4rDZBE1Yy83ORteD4Pi0cC2Dl5NVHk2j69AcyQn9MFRT+8xBRrtf5X+XV
 4iMbwARAWQnRR4pXsJn011KGRinUjwiE3YGcjtydC/P2L0jpVIhrSNOKJ
 DVnle9trVfbdHp1SiQQY+YQkPUYrjARoThbrkEmZSecQSBIyglSycjMEa
 NNoOGaWo/mF//zbkOjJtqPChx6nZljFqscF6mSzkbd0oRkFvNvZ/RnLIr
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZTSFb21k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ice: Use ice_adapter
 for PTP shared data instead of auxdev
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/26/24 14:54, Sergey Temerkhanov wrote:
> Use struct ice_adapter to hold shared PTP data and control PTP
> related actions instead of auxbus. This allows significant code
> simplification and faster access to the container fields used in
> the PTP support code.
> 
> Move the PTP port list to the ice_adapter container to simplify
> the code and avoid race conditions which could occur due to the
> synchronous nature of the initialization/access and
> certain memory saving can be achieved by moving PTP data into
> the ice_adapter itself.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_adapter.c |   6 ++
>   drivers/net/ethernet/intel/ice/ice_adapter.h |  18 +++-
>   drivers/net/ethernet/intel/ice/ice_ptp.c     | 101 ++++++++++++-------
>   drivers/net/ethernet/intel/ice/ice_ptp.h     |   3 +
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
>   5 files changed, 95 insertions(+), 38 deletions(-)
> 

[...]

>   /**
>    * struct ice_adapter - PCI adapter resources shared across PFs
>    * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
>    *                        register of the PTP clock.
>    * @refcount: Reference count. struct ice_pf objects hold the references.
>    * @ctrl_pf: Control PF of the adapter
> + * @ports: Ports list
>    */
>   struct ice_adapter {
>   	/* For access to the GLTSYN_TIME register */
>   	spinlock_t ptp_gltsyn_time_lock;
> -
>   	refcount_t refcount;

Michal has pointed out that @refcount is special in that it protecting
whole struct ice_adapter, so should be kept as the last (but as you see
it's problematic) or as the first :)

>   
>   	struct ice_pf *ctrl_pf;
> +	struct ice_port_list ports;
>   };
>   

[...]
