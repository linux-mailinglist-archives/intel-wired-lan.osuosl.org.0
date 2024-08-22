Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 008DC95BC83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 18:54:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F88040B87;
	Thu, 22 Aug 2024 16:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UpsEEHbYH-iL; Thu, 22 Aug 2024 16:54:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7B4340B36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724345689;
	bh=8KUkhtCXfW4Aj1GO/iXqtlgqlxzKsiN4xrHOyyaPgUY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dExaJfLazXVWjsBoXAbBAPoYGHgeUqrJ0XPEKrTWMx8htGrUfgHtRnmcaalJT94fI
	 siOkBB2u1kq4k8OEUqNcnsn1SJjnt/L2+WWmVFflMPTyan7iCM17+TutXAFwu2cTRj
	 NsyENBLKkkG6eFQiqJaxHTYtMhMVmij+ZjI3ZROKJ43nZv9/7jAOze2tG8rX4Dwshp
	 j2Qi6vyLF8HqUNlzHW4EhkZXiNh6Df2cLMR5yPjIgzsgnjT0QrjcNUYZl6ygysX0WR
	 Ek2RwS7Tu+acY8UVxCZAHxQz7VDRW7d7HrN5frFQsnrZyEHKnz4OPga7CKBLkZOgzt
	 7JgiWwOpOAAHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7B4340B36;
	Thu, 22 Aug 2024 16:54:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46B711BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:54:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 325DE40168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:54:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4fUSfv50nZOw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 16:54:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B44E74013F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B44E74013F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B44E74013F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:54:45 +0000 (UTC)
X-CSE-ConnectionGUID: AZjvb/WIQCexqUfcXJWEEg==
X-CSE-MsgGUID: I8KRj1hKT36sUz5mRPtOcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22940576"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22940576"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:54:45 -0700
X-CSE-ConnectionGUID: lZF1x85KQAejt7Jc1qDK0A==
X-CSE-MsgGUID: zSzjbMJbRH+C4oVsTNGJOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61220126"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 09:54:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:54:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:54:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 09:54:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 09:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bevLKR4WkYh8d7GsanESgETFF+LL7CgOICBxcG5OEvUZHtvGzCIeA2Z9Q5DBCE0PfFNYg/qRhhKRNL+8aXr2hzzQY7pl7O5/k3765Wn9McljkNyUNLB6WpRFxMw9O2mQd4aylpYdeDedMuVDZVt/En5F8pdzaA2u6q3m5TeZq7AhulruMacNelHGptF8GKufYIDIv1BDx4tOOUC3dDIfsideAvFCqZbWy7MmVgQtbK2Lr32O/PmRVZepjnhIY+xQoOA9gsppfxSRr1GXmWIm0FUdwyQjynDNeTsQNi0iFU9tfSiu2QhWDx3V293AtvC77UQZHMIiPAJJqgUIfGMQAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8KUkhtCXfW4Aj1GO/iXqtlgqlxzKsiN4xrHOyyaPgUY=;
 b=Wtb06AbNXEIxczH1KauwIiAkxfYlVOtTgUvDmxof3dL1hItSJqufuirIfwr4nBCdtAL9vXf/LWCK3AWHpEtrAE/90vHFf2rz5amvPvl14/eluMvklHNiXue58giEWkD1l+mRe94EDDk6eL0y3KUhfQTDhsj01gpU2Sfk5ozpqEs0/t68vTNS9ihDrUdqTa2j4SgMrz+4zFKuplbH4CYJuZCwoEYrlXE9MCoOler5W86DWskY+BMduoh7fe7MHq9ipwEV8699mU1iTyjEBPmCLjTjy3FYkY6IfuRB1HQ0BL+x0q1MC2BY3oeA43JcBWyIJPeuS7yNQU0dhwKpghJAWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by BL1PR11MB5270.namprd11.prod.outlook.com (2603:10b6:208:313::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.25; Thu, 22 Aug
 2024 16:54:41 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 16:54:41 +0000
Message-ID: <8903a794-a740-405a-86bd-d97fb611e058@intel.com>
Date: Thu, 22 Aug 2024 18:54:36 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-15-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-15-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0105.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|BL1PR11MB5270:EE_
X-MS-Office365-Filtering-Correlation-Id: c3b67882-b007-4dba-7952-08dcc2cb1db3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MVF5ajRwT2k2SG96TzVRN1VsR2ZtemhCY2NYbENZY1VZeWxjZGYwTDdSNllY?=
 =?utf-8?B?em1TSkdmc1FHQXNUZWdEbTRRNkhwKzlCaFB3VWtZTTNjM0JNZ0pHaEcwVmtz?=
 =?utf-8?B?ditBSkhSMVZXTEhtdUJSazBGb0lCZ1E3eFZ2YUxlKy81dDhSa0tuWDQyN3FV?=
 =?utf-8?B?QVd0Tk9BZzU1bWxnQm1nUWNNaTVYK2lXa0lOcjhaZHp0S1h4Z2NmakVMLys5?=
 =?utf-8?B?b3hsUHNCTkRyaGNlR0VrSHV2Q3A1c2MwazBOY1hjSGlWMEplKy9sL0NBcW9E?=
 =?utf-8?B?eHRudExyZHJWRkc3L3RzVjdPQStSRHZhanQwQTJGajFHR2ltQUpST2d4a3Va?=
 =?utf-8?B?VGkra2pWUEoxN3c2SHh5dmVVRWZxWDZKak40elc5T1FWeWFZSXUyamFrcUhK?=
 =?utf-8?B?TTMyMFdEak1zamhabEQrZ3U5bGdEaE05VG93K2xFcStSOXowV0l0MzZpSHlN?=
 =?utf-8?B?WW1GQ2Q2aXFla3hLeUFHazRZMmpGTnJvMFA5WTUveWxmYW43WUQrS05wL0NE?=
 =?utf-8?B?cmRwRUJ3MjIrMjYyZE5lTGZaWHFDcVRtQWxmeEtZRnU5YkFPZHd0SXZ3OU80?=
 =?utf-8?B?NG5NdC9xRkxuVysxc1YrOXBYbWVMREFYM1JwdThkL280OFdjZHVpOFRUQ21F?=
 =?utf-8?B?Z0NhbjFJOGF5QjhxNGRhMThHZHlqanVBS2VWbU1BcDI4TzI5MVVBbVNRY2lk?=
 =?utf-8?B?QWwvSGtFZHRsRndtTFRuK3MvUnlRRFNldTAyUGN2d0ZWM25RbGVwY1Q5RW5S?=
 =?utf-8?B?b1Vqam5FMmNFU1FYVHlDZWZ5Q3JGU3JHQTMzSVpJc2ZXbzloVUE1Sm5oYXJM?=
 =?utf-8?B?ZDBleE5kMUhiMDVuMlFuVWNTaGJ5NTg1bU5tdGttR2VpaGp0N29ua2RhdzVk?=
 =?utf-8?B?VzRUYWVlUWx0clpldWJvbzBqRmFoYkQxZE1iVW9QRzZIN0t1SlQ4UkoyTkFJ?=
 =?utf-8?B?dW9qY3piNHY1anlubUZYOXZyVk8zc3hpYlZNcktVYldYZzI1d0d6Q3crYkJo?=
 =?utf-8?B?WVF3eXloeHFlaUJXbHVoN3VQc3lieXNyUjJncjFDeTRxS3hEQUhiUkN4SEJ0?=
 =?utf-8?B?SC9mallLLzc5aStDOERoZE5UK0krcEhDU1hXelEvTVIxalFGMlNiNm1WOEp3?=
 =?utf-8?B?bzdCSkhtT0JWdDJ1U0Zra1oyZUlVcDFGTmJWYmM2aE5KVWludG9ZVTJkMjN3?=
 =?utf-8?B?bkRkWEt2YW9XaGFjYzRpNjhpSnFFUUtlVFZ5MWxqVW9IenFESTdBTlJxbEo2?=
 =?utf-8?B?bmlaWHYzazE5ajNaL2wvcHRZckc1MGdkdkFia3BEU2drZmV5cS9Qa1h1ZUhK?=
 =?utf-8?B?UHhNbTY3dENuNXRlV1ZSSitQbWdXck1HTkFLaFRFWE44NGhBekhKSG15ZmpU?=
 =?utf-8?B?RmlveUw5ME0rV2pYalpLSjI3RWsvWXFZQjYyZVA1Qll3MzBqaTRHTHI3VlhB?=
 =?utf-8?B?Tlg1YUIvS0dmczFrNExiSVBVOVdLK1FMSGphQXpYWGZzR1IvcVA2UzRuOXkv?=
 =?utf-8?B?MVlnR1pwTWN6cDMzMGg1QUE2allUbWZ0aHBFTk1Cbm1qVVFXRXpCRXFNVFZ0?=
 =?utf-8?B?OGc1RGZiOE8vSzUwVWx6SStDQUhYemxVSVpzdlpoSXgyU2JPUTN0OTZJNzBK?=
 =?utf-8?B?K3ZiMlRHOTQvRk1mdEZud2FnRUpVaTN4YjlZd3ZTTmxHanBnVHBQZHQ5T0JE?=
 =?utf-8?B?V1ZlTXZjZ202OExNdy9ZeWlmcjAybWlLcUt2UDArZmxrUk9UWmhlTi8vMHFO?=
 =?utf-8?B?S0xjT204TzJDTjZpYmcwcjBVNno1b3FNdHl6dm5rTys0VWx0NTcvVng5OTJG?=
 =?utf-8?B?eEE1MGp2dmF5QWk2eVh5dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1dzbldaeHhraVNoeGNYd1RtSTRLQkVvUWNlZFNiTnp6RmJ3aFA3aWh4dE05?=
 =?utf-8?B?cXkwWFM0UUdiOVozbUFFQUFacEtaV1J1VHd5MEdsQXFSTFQ5enp6UGpEZ000?=
 =?utf-8?B?clFDMDkvb2ROOHRqdGk3SVE2N0pUVkt1NG9rVExzRFFiUmxKWEhRU29oRjFk?=
 =?utf-8?B?K3Rwd1VsT3QzdXJOU0FGRkhYWGM5L3p1RGU1U0tUSmd4NDdUdVJDcHl4Tnps?=
 =?utf-8?B?L2RxZjdWb3R4TmhMOCtVd3J1bFpreTJROGg5YVJCblVISGVnd0M1K1BYL0M4?=
 =?utf-8?B?dS9DZElRTjB2aEYwclRHK1BoWlNZTlFldUpVdk1VVDlJMEJEdHZCcUJ0QjM0?=
 =?utf-8?B?ZFJmbWpmK2FDRG5LWGd4d0lRajlZY0xzS2dWVHIvamIyMjNtWDZmVmVPOTZ2?=
 =?utf-8?B?STZFSDlyUC9uRDFwTVlJQkcxZ1ZWUnUvdVdEVzNYdW9mYTJvVXBsUXQxV0w2?=
 =?utf-8?B?cW5ZQ0RMeEdkYkFlYXVsbWFsWDVBeTF5RHNUK3hQUzJ1SVZiTFg2bnVYNWV1?=
 =?utf-8?B?R1REbUhjY3Rib2JtNFZDWGJyUXdqNkRPajQvOFB2T3d2dVRXUFNzYlZtVEpj?=
 =?utf-8?B?aG1zNHJOb3hoSWFwZ2RjbjB0eVVFY0tYMFVycTd6cXZZMFowWlBBRnJURTlG?=
 =?utf-8?B?bWttenEzTEtGWUFPR2ZrbERDMWtOcEhubGI0N2p4V0FoeTZMUTJOMHZSak52?=
 =?utf-8?B?dHBFNEtpTlZNdmYwdVowMDkvM1VLQ3laR2tvL0NmeFVhVlVlRm9jNkhNeWFp?=
 =?utf-8?B?TGhLclMzOElBNWtDQlp5ZkhkU3c4eHR0WHdXS2FIRGNISjVqNFFlcDVOQ3Rn?=
 =?utf-8?B?YjYxVkRQQTJxZDdtVUgvclZSblBxdlRzQXNhamxmRTBOWWJDcmpjdFNZTkE0?=
 =?utf-8?B?THdwRy9SQzM5ODV6YjZITTJQOG1QR2kxNUU0Z2pjYTFQY1cyWVFsY3hONVZ2?=
 =?utf-8?B?SjBrNmQ0elk2QU53VWJWbExBRWdFY0lSL0JtL05ub3hxQ2RGRTVvL0lxKy9w?=
 =?utf-8?B?d1RPcTdvQlRPZXRCSjZ4NFlhcXIrdjcvMXZ5TkNBeFFBOVB6Y0pxOWtyL2p5?=
 =?utf-8?B?enk3S28yTGlwaW9DQ1FDZlNGWGlEOGYwSSsxd2NwWUJPUjRBbWlYWGZNemU0?=
 =?utf-8?B?VkdpYkRKT21kcFFZRmRmTlNseVBmcWcrejQyWXdPcEFuSnNxR0ZyTGpzbmRO?=
 =?utf-8?B?UTU1Y3djcXh0RFJJOEJRa3lKRGFJU0M4OUFTbEJMMGlIRmlCeW1yeTMyUXli?=
 =?utf-8?B?WmtWakRFd3lxTVgzeGZsL25mM3ZUZjl1S1M5enh0SCt5d1NmY2RKVlZOS25q?=
 =?utf-8?B?RFVadlIwZGMyM0dSRWhDSGF4UDZMc3NXSml6Zy9hR2pkRllNSTg2QjNuNDc2?=
 =?utf-8?B?SFhnNmRJMHV5MFRoVHk5U283c2VvOE1YVEJZTkNtRjhod0dJKytFV1lpWWJN?=
 =?utf-8?B?KzlMalhjVlRCOEd6UmdDbXZjT25mRktMaUQ1Z2xsd0xicjdhcExpdU8rNUc2?=
 =?utf-8?B?TWNiWHR0SnZsVDYyOE5GeGNkTTBWUm5MMVQvVXdOK0dtUnNrUDM1MjJCMmgz?=
 =?utf-8?B?VzhhTmw3NDFjTnozL2h5U1g0VWc2L0l6UnNVZE5jTDltL3dwR296dVArWURH?=
 =?utf-8?B?L1d2Rm84a2ZmQ3JIUHRjZnJWY3cvSGdtdlVGUncyL2dLOHl6RXJXWW1SMDZE?=
 =?utf-8?B?UDVwVFI5NzlQR2N4Qm5qcW00VDBBQ2Urdm15cExFZ0FNd1Izdmp5OFduek5l?=
 =?utf-8?B?eXR1TGZ6MUJlL3duWnJJZEJ3M2xtTXJGTWszTHZYTDAxZ1g4K3lLMVoyanBZ?=
 =?utf-8?B?VDBrR0JxQjUzTUhaaHFVWG52SStrM3h0RFd3WFdEcjgwdGVjOUZscCtnUGZh?=
 =?utf-8?B?OXdtYzMwcFVIa1ZKcjNxZzdrYmhkZ1FDY2EvYVBud2NjVWcwQUh3Rm1KL0NG?=
 =?utf-8?B?a0ZvS2ppakJMUzMxSVRsUmIydEpwK0dBR2ZGVmZjNGs0R08yK21tWkg3N0Jj?=
 =?utf-8?B?aXI0VzRMaUdGaXFhMFRXMmxyUXZOTkVQVnRXcUhwRXpydXJ2bW5YWFBvV1Iz?=
 =?utf-8?B?NVJFUW5tcGhxWEdFM0lCbHRuSVFWQ3NvdnVlNUhHNzhIejRZZGQ5MCtpOGNS?=
 =?utf-8?B?ak8rdjZ2ajBiMDBxUEpxU1lyVVIyQUdHVmhsYVUxVjhsdzZKOHppMjFZOEpw?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3b67882-b007-4dba-7952-08dcc2cb1db3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 16:54:41.3180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 75H1Tt4mAQbTmtVFHG7L+JPu6PwkJ6Pj+48ww1icOBmfaFzeAXVUdV4fbMcPn0j5BYUQSSJvn62PA2Eoqlboapuv0ir/AcFhOl2IzMHhAJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5270
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724345686; x=1755881686;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q2Kht4oYXb+do0Jn1oxKRDGy94lvg0rJ951tFeV9HN4=;
 b=Cb+CEePp1ttY4NRumFOj4CeANbQWVIOahQBZ3GBglO07mXa3PXiaEQZ4
 +AiqCcIzaXDSgOHecGC/TdDYEmjjBJ0JaIXwPaQhvsy3qMpYuxzCZE799
 jPSL+OnY9GSqZYzStDiTUm+RoBqkBLkFGoRP7ld6C1MX0uZn86YxXsj4i
 1saAcxwPR8yeAFM2ad+NKuWwx9b73U4t7ci20kf21NQgL+xhL9ek0tLHt
 tWlaFjdKQh/rE6xubEuOggzr/lGo6AK21DSN3puFcLPs/SVFnzHxXxdoN
 S+mzW51MdQu3IwvyAYz8nhpKoybgsf+CPR88RAYk7MQNdlWs6YOAxeeZK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cb+CEePp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 14/14] iavf: add support
 for Rx timestamps to hotpath
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:39 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add support for receive timestamps to the Rx hotpath. This support only
> works when using the flexible descriptor format, so make sure that we
> request this format by default if we have receive timestamp support
> available in the PTP capabilities.
> 
> In order to report the timestamps to userspace, we need to perform
> timestamp extension. The Rx descriptor does actually contain the "40
> bit" timestamp. However, upper 32 bits which contain nanoseconds are
> conveniently stored separately in the descriptor. We could extract the
> 32bits and lower 8 bits, then perform a bitwise OR to calculate the
> 40bit value. This makes no sense, because the timestamp extension
> algorithm would simply discard the lower 8 bits anyways.
> 
> Thus, implement timestamp extension as iavf_ptp_extend_32b_timestamp(),
> and extract and forward only the 32bits of nominal nanoseconds.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Sunil Goutham <sgoutham@marvell.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 11 +++-
>  drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 61 +++++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.h  |  4 ++
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 45 +++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
>  5 files changed, 121 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 1458410ca560..ebc01a8d1ac6 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -730,6 +730,15 @@ static u8 iavf_select_rx_desc_format(const struct iavf_adapter *adapter)
>  	if (!IAVF_RXDID_ALLOWED(adapter))
>  		return VIRTCHNL_RXDID_1_32B_BASE;
>  
> +	/* Rx timestamping requires the use of flexible NIC descriptors */
> +	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
> +		if (rxdids & BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC))
> +			return VIRTCHNL_RXDID_2_FLEX_SQ_NIC;
> +
> +		pci_warn(adapter->pdev,
> +			 "Unable to negotiate flexible descriptor format\n");
> +	}
> +
>  	/* Warn if the PF does not list support for the default legacy
>  	 * descriptor format. This shouldn't happen, as this is the format
>  	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
> @@ -737,7 +746,7 @@ static u8 iavf_select_rx_desc_format(const struct iavf_adapter *adapter)
>  	 * support for the format.
>  	 */
>  	if (!(rxdids & VIRTCHNL_RXDID_1_32B_BASE_M))
> -		dev_warn(&adapter->pdev->dev, "PF does not list support for default Rx descriptor format\n");
> +		pci_warn(adapter->pdev, "PF does not list support for default Rx descriptor format\n");

Unrelated (addresses my earlier comments, but not related to this patch).

[...]

> @@ -1085,6 +1086,49 @@ static void iavf_flex_rx_hash(const struct iavf_ring *ring,
>  	}
>  }
>  
> +/**
> + * iavf_flex_rx_tstamp - Capture Rx timestamp from the descriptor
> + * @rx_ring: descriptor ring
> + * @rx_desc: specific descriptor
> + * @skb: skb currently being received
> + *
> + * Read the Rx timestamp value from the descriptor and pass it to the stack.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + */
> +static void iavf_flex_rx_tstamp(const struct iavf_ring *rx_ring,
> +				const struct iavf_rx_desc *rx_desc,
> +				struct sk_buff *skb)
> +{
> +	struct iavf_adapter *adapter;
> +	__le64 qw2 = rx_desc->qw2;
> +	__le64 qw3 = rx_desc->qw3;

You only need both @qw2 and @qw3 once, so I'd avoid creating these
variables.
But given that these qwords are used in other functions, I'd just pass
both qwords as function arguments instead of @rx_desc.

> +	u32 tstamp;
> +	u64 ns;
> +
> +	/* Skip processing if timestamps aren't enabled */
> +	if (!(rx_ring->flags & IAVF_TXRX_FLAGS_HW_TSTAMP))
> +		return;
> +
> +	/* Check if this Rx descriptor has a valid timestamp */
> +	if (!le64_get_bits(qw2, IAVF_PTP_40B_TSTAMP_VALID))
> +		return;
> +
> +	/* the ts_low field only contains the valid bit and sub-nanosecond
> +	 * precision, so we don't need to extract it.
> +	 */
> +	tstamp = le64_get_bits(qw3, IAVF_RXD_FLEX_QW3_TSTAMP_HIGH_M);
> +
> +	adapter = netdev_priv(rx_ring->netdev);
> +	ns = iavf_ptp_extend_32b_timestamp(adapter->ptp.cached_phc_time,
> +					   tstamp);

Hmm, this netdev_priv() + adapter access etc. doesn't look good on
hotpath. I think it would be better to cache a pointer to adapter->ptp
in each ring structure and update them when it gets changed.

> +
> +	*skb_hwtstamps(skb) = (struct skb_shared_hwtstamps) {
> +		.hwtstamp = ns_to_ktime(ns),
> +	};

Thanks,
Olek
