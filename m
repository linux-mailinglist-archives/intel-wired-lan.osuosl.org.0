Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99450953D8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 00:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA2E4403EA;
	Thu, 15 Aug 2024 22:50:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VfSfkyG6HAYp; Thu, 15 Aug 2024 22:50:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B442A40290
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723762209;
	bh=7dXCor6wAOqrBguLfSdyzVFJhcHeHhRri1M8DTNYzUo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=paNghTaFFfmO9oGFx0egmIzcNc9TFSAiVA2tY/V6WJNyIEGPQa4+GbV+4lZLQcCtV
	 3ZZ8KXXexWd9hFj2MNKa8FopiPlwHiBDsT7g9LN2bN1Wo4mUzDvyTp89QOdCK/qFDt
	 PnrL0gteG3kI6sQOUJGW226CHXVzMfyyXpJV0hzKR8X4sZQ9oZ8PbTEt++ScssB7rW
	 J6UyXQAJ15fpuzZ2wJyt6I0aQ+DGUGi/0rvq/LigYGP1hO8huFiBxLhqOe3g3AM+th
	 ZBhkuexl0edRuyyIJfINJDkXkKvral6HXzYadqA/bb1CU7kzZb6qe16eQtVpcveXxD
	 jSwY8vYXhi5bw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B442A40290;
	Thu, 15 Aug 2024 22:50:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61B9D1BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BA3780EE1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:50:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d_JLWZlIeKu2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 22:50:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 401E980E6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 401E980E6B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 401E980E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:50:06 +0000 (UTC)
X-CSE-ConnectionGUID: WEvRSdFiQjSl+SMw353S3Q==
X-CSE-MsgGUID: uG2Es/BeQmaKVRqdFcn1Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="32717871"
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="32717871"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 15:50:06 -0700
X-CSE-ConnectionGUID: H7mjovUnSCmpafQgKNtFsg==
X-CSE-MsgGUID: 5nniJquGQTuHD1bJELxHRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="90274755"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 15:50:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 15:50:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 15:50:05 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 15:50:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tiuyc6+kKvgPug1mexYKEivn20Fb7BMyciYzwJay3mgl8zAmitRFKEq6voLU8/ZGWlRaYrl6ebdCPMgrRTK607gBtTPbDvmuveB1LWy1cnVqjUrPEMhymLLtiNQcngUU0UPJ6i2v+WLw2HUvEBLUMzIcGA6llYXWjwx18fSdPzkyw1A31oVW8s0kvifEgOOCbChgI/vz2qxd6ni87UYkxsTVz96psEQkp4JaQXau8gpk4VbNXO5nFBXlESPnJihUjrphAIscDCGC7giq3dnk0GNVruciXdEFcd3LovxeQta645l3U6WrXGQqk8EKM9w3zMNL67nZLCwhMVXevJ0N0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7dXCor6wAOqrBguLfSdyzVFJhcHeHhRri1M8DTNYzUo=;
 b=xWnyPPlLzR1CZZkLj+cu4ylW6KpFV++0Q6kYKuZia0RPt+iBmtXAO5DsZH0LQSpIcr09+dE+ZmdIIhsuOt0rcmNn7myLrefLIJJu3sK2FcypORbM5I7l8YSTKIKw9U7I5x90FRaNeDf4FZijfif4yXAcJBJnClda1fNOKQBi84v0dn9MGHWx44byYdpcWLhX50W+IHIVYV5kYIpHKJ86Dg+6aYxe3cwPkmmTbGwKKsi45uCQWw15PVdIHE7NKt+RLrA2G9Vsyvd8XeaonZczMDpjKLsPrVN9kTYo5cwxZQgjXcZj/lMTJtzib0DfS5hG8I6BPfL1hIxkW9LCmrT9Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH8PR11MB7989.namprd11.prod.outlook.com (2603:10b6:510:258::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Thu, 15 Aug
 2024 22:50:03 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7875.016; Thu, 15 Aug 2024
 22:50:02 +0000
Message-ID: <2a5fea4b-fd00-eb27-2e5f-28d7ead9fc70@intel.com>
Date: Thu, 15 Aug 2024 15:49:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Diomidis Spinellis <dds@aueb.gr>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
References: <20240811112837.3323753-1-dds@aueb.gr>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240811112837.3323753-1-dds@aueb.gr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR17CA0003.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::16) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH8PR11MB7989:EE_
X-MS-Office365-Filtering-Correlation-Id: cc72a4f7-7428-475a-375a-08dcbd7c993a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TE1Qc1Y0TWFudkZ4Q2pzeWEyZlpWc3E0Nk9yNTZ1VGFpMFJ3dXh0Y1RBN0dZ?=
 =?utf-8?B?YVAyUG0rN2NwODRUQlhyQVg3SVVHTDRHZkdFTXdVdjRibVgyUGxXQVFDa1Jw?=
 =?utf-8?B?OEtUbG1rT0hDdkFCdUhlVGRObFZHaER6OThJS2ZhcTEzT05aWmhtVENRM2tm?=
 =?utf-8?B?Z3J2YVVhTkI1VkRmL084aWZtY09LY3Y0MHZ0dzRSVzFDWFV0eWppdEl5RHZK?=
 =?utf-8?B?cWo5a0FxQ1Fnd2xMT3BkNjBnNzM5Uy9TazhBVlpsdnAvVitZU0hzemVvemIy?=
 =?utf-8?B?Y2NZQjF0RGpIbmZrOUZWQUJjMmducG5WVHlFNE1ZNXhDNDBLVzYvdnJNZVYw?=
 =?utf-8?B?V0QwQnJoRWJUa3ZIb2ppTTA5V3Jab1dXQU5oblc5UUtSeUlhUjA3TVl0QW1V?=
 =?utf-8?B?bXBHMGMyMFpHYnNUM3lsNCtPcjFjL081SncxbVljTStEUk1wUnhhWUtaMkN0?=
 =?utf-8?B?aXlGb1JFSlg4QmZsS3Q0Yk1ROEE2TWlkSU1ncmVpREZrdm9wUk1wbTArM1lV?=
 =?utf-8?B?TFdLT0FFMHFncjBBYysvYng0Vk1uQnlXYjZ1Mkx4WU9qbE5neUFBRVlWN0py?=
 =?utf-8?B?dUs3UTZtZ2dyL25SOGRJQ3RIVVdPaXBqbEVXOHpGdjhOdWRoSVo0bjJpb0NI?=
 =?utf-8?B?Q25qWksxMTFIRFo5WXpUMlFFQ2FlMGFpZU45Wk1JSkNxeW9xcjR2MzFSMTNi?=
 =?utf-8?B?WjhOYlp2dGh5Y3N3bmsvODRKcmZwbkNSaDVvNWxHREVCVzJvaTRBUTlaWlJE?=
 =?utf-8?B?NDRtMFFZNi8xZHRwTXpnc2dKQ01odFpoMWVBOGxxWW03Mi9pR3lnZkpzVEZU?=
 =?utf-8?B?WUloZWMwMXViZTRrdGRqTlpuWTQ1cnJ6aFQ2WmExbWhPU0lDY1lkQ2Y4OWtP?=
 =?utf-8?B?SXRwZHhYT0NpYWRwbkR2RktmVnljU0crVkVMVnVobnlZK05hMG0xeE5Td3Fx?=
 =?utf-8?B?eEpBNlltbzhHZEtJZU9DTUE0SXhKOW9sY2xKOGgyNklXYXJWL2src0N2Wk9F?=
 =?utf-8?B?ZEJBOXF5Qnc0RUVWOXo4RUlrYzlLbkdQSW5YNW5YTmtoUkpLNitFRzExdldr?=
 =?utf-8?B?b2hyODBZb3h6VDVxcjI4VUZrNjB4ckZnVWFYZlBraVpVTVAzUHh4b1NxTDFY?=
 =?utf-8?B?VDZKN29heDI2Q3RzSHFRZi9mOERsVmFzdXB2SmJUNzU2a2lHRHI3QmxWZ3Zl?=
 =?utf-8?B?MFVDQ1c5WE5ETzROUjlHYXgyMGczcmxEdU1JVXBRUFJtbDVuN05SNVRqa3NP?=
 =?utf-8?B?aHpkMkdudldNdVBudDZwRjRaTWZoRFJwNWxuTXBPclNZWXpjU2dzdEplcHE1?=
 =?utf-8?B?SXJPUmVIZlBEMEhnTnpCUTdqZDVFVlY3dDJPZU02RWQwcm5qZERVaW55SlZF?=
 =?utf-8?B?K3JyeFd0UjlTWkVYUFRKS1FLV3lLTFVkTmRLVWZDSnl3QUk5WDNLWnVxN1RE?=
 =?utf-8?B?aE13U0N3Q0h0Tm9CdXFLakRJNkVwRkVOUmJrdG1Fd0UzdVhsQmduRU1VK1Uz?=
 =?utf-8?B?SzVtSzFoWFE4YlJDN2h0NWdjeWxzTFlneGJ2bEluZDQxSEg0bW1uZU4rM1FS?=
 =?utf-8?B?OG12dENsMGRkRTBuQUZ3bFpidGRGa2NOdEV3TWZNZ0I1bms2RHBrbTNXamRy?=
 =?utf-8?B?eHZlMEU1RlpPTy90YTJlMzFIMGcwMmFqVGl5Ulp2MHUxRHF2OG1CMEgxUW1u?=
 =?utf-8?B?bG02T1BxZ0N3RFhNSi93dGt0VlFBRzdtREVqdDFuVjd4UWpEWWxrZ0ZoN3BY?=
 =?utf-8?B?MGgrc1h4SE5jZEliTS9HeVdXdThUZ0hyUFJTWmZxc01aT21LYkFqS3VXaGVG?=
 =?utf-8?B?UW1KTENsMU9EQndwYlRFdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1RxUTk4Z0JqNjc2ZGpyYjJ4SmNzd3RlVHRCb0IvbzA2blhXcXJJUHRJeXQy?=
 =?utf-8?B?dm4rSEtWQ2NGbDFRK1Y4d1NFVWhHbXkvaXJoeXc0alNMT2FqejNHR0ZMMTBk?=
 =?utf-8?B?STVuempTcm1ra0FkL2hpME5IdDQyZzB2WTYwdmJta3NBYU91VzZFNklhZ1RP?=
 =?utf-8?B?NVpXRUwxU2ZoMEFLTlU5ZmU2V3l0MnFZVGNLTERtZUpuWHo2aC8zd3JhSDdo?=
 =?utf-8?B?THB0TnJFQ2tWMUNUczFCZjFNRmFwK3FrU0NPTmExbWFIM3Bzbll3cTZESmNR?=
 =?utf-8?B?aFZ6NDgwb3hneWJQUnpQZXM2T0oyRjFLUjhhTkJ3bTNoNE94QlplekRkY211?=
 =?utf-8?B?WFl3MDg0bUEvZUJqRXZwSDUzOVJYNkJzM1NKaTJ6NEtrTGZnbkhnMWlLTHhO?=
 =?utf-8?B?MzhpQUdKVHM1RDJjOWVjeWZ0Z1RKZVJUQk1rb3I3SkRMUGhGazJhaFJJMU56?=
 =?utf-8?B?RHRzR0hELzUwT0pKa0dHMkRXaGdySnhUSkZxclNPWlU0cFdQdy9Xd2RLMXg3?=
 =?utf-8?B?Z0FXWmZpS1VuaitHelRVeFhhdURiTHlhTHUxSkZoblJlQ084bDlZR296YWpu?=
 =?utf-8?B?RHRURVQ1UkpWWUVlVDVKc3FBcUwxSTU4UjJ5d1ZMa3NvUHM4ZWVibmFFOThL?=
 =?utf-8?B?Y3lYSGp4cEgxeHl0bkljTWdjQlR2b0xrWjFUUENTMkI1ejVlZUlJNHh1VEhU?=
 =?utf-8?B?SjNnSUlkR293RlRwVHN6TE9oVWNOQWJEN1J3QVFnbmthSm9PWDNVbHYyaUE4?=
 =?utf-8?B?eDloZU1ydjJEWktoZFp2Q3RkZzNiRjRGSVNLYkpWT0VBS1MzR3dneGpWQTR1?=
 =?utf-8?B?TmtyZUdlOTJHL3JNMEtWVFROSVhqQXpnRTVDdXBFOU9aRHJZYXNqZThPaWc1?=
 =?utf-8?B?NWlRRnB2NWNINEVET2FNc001YzBET1FmY0lMUGlIc3QyS0pjYmhULzcya2Fm?=
 =?utf-8?B?ajVqa1M0RDd2SmRmZGNXRkFyVk1Nb2ZkdXNTcy94RWU5NlprcDhEbXU3RGZ6?=
 =?utf-8?B?OHZlNVBaNkdrRUtLcUFISWxNL04rcUFSdFdvVnc1QjByaUVablZiNFc1MC9k?=
 =?utf-8?B?c1FURW5oWURoMC81MEpRL1ZhWWluRk9VQ1pGd3pRU2JheEhGOVhFUm03VEZY?=
 =?utf-8?B?WVdnVVdrQnY2b2RGTDZHSWlPTzNyWmNQYk1tQk5rRms3cWpJUWZIanE4SjMw?=
 =?utf-8?B?QXBSQ0N1dHp6eDlybTZHN3JEVEJJTnlHNllzem9DMlpPbG54TkVCOUpYZmhU?=
 =?utf-8?B?UXZid2l5a01HRzZKSWU1MFhIMWg2NDJSMVJGUFY5Sno2R3NmWXhOQVBQbXdp?=
 =?utf-8?B?RGZuYlh4UjV0dXZEYVNuam9zOGtIdXluMlJKeUozRHVIRVFVM3RzRWtlblRt?=
 =?utf-8?B?SHBtNW1PV3g4bUR1TE9POGxmNHV4aFoxWnhrSGdNakJCb05SRWhYcTZlTnEz?=
 =?utf-8?B?ZGxMaStTTTBUMzVhTVVXSlBiWHIraUE1a2g0anBxMWtLbGdRYmVuUTROalNj?=
 =?utf-8?B?RXZ3SHQxVFVqbmxkSHI0WXE1NkZteTkvQTJGdSs2dGIyYTVsM2lONkZMMDYv?=
 =?utf-8?B?Q0J1UlNSZ1dIK1gyZG5nbUFIVlpEUS9QUzVla2ZJS0M0NktxMmk5MjlxU0s1?=
 =?utf-8?B?bFFXTEN5NGFsZWVFdkRJZW5IeDFwSkx4ODErbFUrcHlKMW94TWl6MXNYQTVm?=
 =?utf-8?B?MGJLVFIvQTgwUkQzY0NpVnJMR2pVZUVySmQ1TW8wdVMybFI1L2NjL2VzWFBI?=
 =?utf-8?B?UWpjSURqb2ZxUlpEdnhGZStiOXA3cTRWMDB4ajBwN0tBeFdrME81WjNXWjBT?=
 =?utf-8?B?ZXNrSW8xN25NMTNkQWoxa1h3YVZ5WVJuajB3aTB5Y25wd2tZZXRxb25sc00r?=
 =?utf-8?B?cEJjR0Uwa3IvTXFaWWlSNG1KbjN5QXVUbmxpc3RHT0JlQUZaUnRBZDl2eVJT?=
 =?utf-8?B?b1NZQ1NQOXE2cUJwVi94bk5wc1d2bGxUbHlsNFJOWmlzS01LVVBqNmJ0N0FO?=
 =?utf-8?B?NlQ3V0JmWWMzak14b2o5ZUlZa0MzbGJRcThQNVRIV0wwRENnYU92T0JYdmJZ?=
 =?utf-8?B?ZlhiSThpRFFSRVVZbW84WFQvdXB2Yi84Q1FIcS9wL0M0RlRnSWp4cFN6dVox?=
 =?utf-8?B?WnBpMCtGTU5VcmZ6dzAzSklzT25sbHN6clRDV01EeHZ2a2c0T2FVZWVOWDhk?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc72a4f7-7428-475a-375a-08dcbd7c993a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 22:50:02.5787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zm/9N9Xor769jEIf+isL8AGVGAiMq8q1ukpdZDDNRW5eJGVY/lnCw43najPv7Smtq13uWVo05A9uR5CWzVSfNmQQ2xfdONpKRU6mgx7rfPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7989
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723762207; x=1755298207;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cC6wf4VRt9MYGLHjW9fpXFFBh+DukklDROU+nahfhTA=;
 b=iLjzu3nesOqVSx2A2FmQlWyPJuk0fnlZdC2wOHJkrLARySpTOuSPJyIf
 PQmWtR1GWkqw4yVSHVPoTLo+mAgCSIAxvUEpUl8k1u028SD75PXS1poVZ
 R8hWMtHF80gHiKkU5nm8k+/mD3E1ia0noE6jFMkIKiYtA6WblzcVHjICt
 0L8Xc8/rUhJDrh23HF7Lc6AwA43omYAWOshfiNSAa4J8ZwC7YfygRfsJP
 FP0WyjYY2+ngVZUPePogjLL2bvWPG2WQbOGt7FdhHiVa/CS67VQxplLCA
 eFLjkx2aa/QTPtx2fnbNbid2KspsZYhi5hv5KLGqwfA+J4WMIXr1K25so
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iLjzu3ne
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] Break include dependency cycle
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/11/2024 4:28 AM, Diomidis Spinellis wrote:

Hi Diomidis,

Thank you for the patch. Could you please include the driver name in the 
title.

i.e. ixgbe: Break include dependency cycle

and also specify the tree you are targeting; presumably '[PATCH iwl-next]'.

> Header ixgbe_type.h includes ixgbe_mbx.h.  Also, header ixgbe_mbx.h
> included ixgbe_type.h, thus introducing a circular dependency.
> Removing the second include is OK, because its includers, ixgbe_mbx.c
> and ixgbe_82599.c, include ixgbe.h, which includes ixgbe_type.h.

While this does resolve the dependency, the preference is to not rely on 
includes from other files to supplement the needed includes. It would be 
better for the headers to explicitly include what they need. Easier said 
than done unfortunately.

I believe for ixgbe_mbx.h, linux/types.h and a forward declaration of 
ixgbe_hw would suffice.

For ixgbe_type.h, it doesn't appear to need ixgbe_mbx.h; though we would 
need add the include to the other files that rely on the include. 
ixgbe_main.c, _sriov.c, _x540.c, and _x550.c are what I'm seeing.

Thanks,
Tony

> Signed-off-by: Diomidis Spinellis <dds@aueb.gr>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> index bd205306934b..34bc042da4ed 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
> @@ -4,8 +4,6 @@
>   #ifndef _IXGBE_MBX_H_
>   #define _IXGBE_MBX_H_
>   
> -#include "ixgbe_type.h"
> -
>   #define IXGBE_VFMAILBOX_SIZE        16 /* 16 32 bit words - 64 bytes */
>   
>   #define IXGBE_VFMAILBOX             0x002FC
