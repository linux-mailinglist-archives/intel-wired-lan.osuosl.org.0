Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7BF906424
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 08:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27D8140167;
	Thu, 13 Jun 2024 06:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cr62XIA5M8BD; Thu, 13 Jun 2024 06:36:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FA7B40BB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718260601;
	bh=ZdiPSGDM+6eDNIQUpwukX2gzdPaBeUSwNAe1/SgENBg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FjG4/GlLUJX/sKAemUNOmVtti8iwcZ9HIZgqKodBujiyfZ25Wt0sc7MVm7Rl7xoZp
	 5JmpLPn9Erqx8G6MHlv+pa8U0JHSoIybHmWkuuYy3c1YPm+5RW3tpaX17KUZvFfai7
	 8CXILzc9garP2S2fGRX1CZlntVMNXFN7d+TgDAYioPjZw4d4HKzPYt1JEqgZ+PbUOU
	 58mApQAh8vnUJWPjg3H8C5h8wy4ilnHC/YF/PpQ433enW3COa4qlgiBJddZo7HOZtP
	 Hm/5Q7TvNxwErnjLaWC3aBYVWWmM3sidXGEYkMYIo0vvSrAlhhmDojOhvXhWf5FVlz
	 NEwQIHy9B4AzA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FA7B40BB9;
	Thu, 13 Jun 2024 06:36:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28FE51BF35C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 06:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 228B860B59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 06:36:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ghKq93sy3ngU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 06:36:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E28BE60B50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E28BE60B50
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E28BE60B50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 06:36:37 +0000 (UTC)
X-CSE-ConnectionGUID: +9mabmwOSFWMS3uDUirwjQ==
X-CSE-MsgGUID: a3Rsjin8QKyfAl+e3CZdpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15228401"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="15228401"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 23:36:37 -0700
X-CSE-ConnectionGUID: zlECyrqPQuSXpHP+cHlPJA==
X-CSE-MsgGUID: q27B1SHiQVawN7lYrP9qbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="40103769"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 23:36:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 23:36:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 23:36:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 23:36:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 23:36:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dCkMgyTfE1sRwRi7UQ1sO51EIjJDsIhpASvjcQBCxAfMkfy0EQbftXQCwuyoCfKiHam4pbA2b3inzOKanFVDBUcekiAwLfApGGWgD402SAlSvzkDWtBJ/lo8/Fpb/o6VWPSBi97xwJX6FM9kIFB7/4s8yULyFOKe/vbIwGQF+5sZSOj+ct0TWK9Uov7fHzsHQoqkx9w15TblfLFw6pDoVX1XG8s7TEDwnVdo+PAzhCMu/WMZZXYrubSWMNV44B8swZpWyheunNNUrhARlGK+Cjd1+Soht5d3sVffZ27PLqPZJ0bVaR+R2qCA+uC3LFVosyiAqrF8/KgEcRClg3Oflg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZdiPSGDM+6eDNIQUpwukX2gzdPaBeUSwNAe1/SgENBg=;
 b=PpBVc7ZUrhyHQO4zd3gLetyX/0j94mp013ZpgMYY3a9+qIu3Jtsob1YRqsZ2cHHHp7sNBfu3GUJNVI5PMKDD6Bl5q7Y9wj0QEYIKG00eTKklnhhk0jSd3BeOhZX6/nWGLmdFtMsomhdUPYJsiv9UkQS74PuOjKuOwR3CwvmDToE3mOus8lEBh0fsQNydZiXDFp7WDL/qe2Wv8E/QK0OCFhypKijWI0ssknSdpyYdlhKjhUOtjw9IRJYA/26DbeSRURE06x3gECQKz22CEn2JXmVSeiv15ECSU76I2gc/RrvmoFLy3rRUO8hYFj8368ptbdg4ps/nvfA6SfdGPyfJiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 PH8PR11MB6831.namprd11.prod.outlook.com (2603:10b6:510:22d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.24; Thu, 13 Jun
 2024 06:36:33 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%5]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 06:36:32 +0000
Message-ID: <a63aff29-c392-4efe-b8c0-9f2305f956fe@intel.com>
Date: Wed, 12 Jun 2024 23:36:29 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
 <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
 <cc76768c-d8d4-4c07-93c1-807f3159b573@intel.com>
 <641b439b-2bc0-4f2b-9871-b522e1141cd1@intel.com>
 <ef8057dc-28f9-483a-9885-35879ad84b56@intel.com>
Content-Language: en-US
From: Josh Hay <joshua.a.hay@intel.com>
In-Reply-To: <ef8057dc-28f9-483a-9885-35879ad84b56@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P222CA0011.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::16) To DM4PR11MB6502.namprd11.prod.outlook.com
 (2603:10b6:8:89::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6502:EE_|PH8PR11MB6831:EE_
X-MS-Office365-Filtering-Correlation-Id: 13d5e13c-d476-4cf0-5048-08dc8b732a44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|366010|1800799018|376008;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnJMYmREemZZSytJdU9WM21VNUFwNDZHSGpTTFMxMm1rY0tOUHNJK2YwbjBJ?=
 =?utf-8?B?Nmg5VmVmYjZwMG9xTzNJclBpcjVmM1FQTzUzdjYxWVpsT2tERnVmK29OT0hm?=
 =?utf-8?B?Mi9qaTVDQUNOQnlQWXgzK0NPZlpJOHNRODhOLzA3SzIwVWN6NWhadElYcERi?=
 =?utf-8?B?ZW95OVRjOTVQeGl5dkNkd0Zwdm1uSHdiTjFpU2FYSVdIRldVd0dsQ3NMa3FC?=
 =?utf-8?B?dDNPVHpFVUhES3JCZ1JKVzVwUEhVYm5uaVA1aDBtc3JaRDNvLzJCWSs4dlhu?=
 =?utf-8?B?NThRNHpoOHFMMkZPNnh6MnlpQTJqdi8xWTZHY0kzeUJwNldTbC9XYS9UaXZY?=
 =?utf-8?B?STYyRDNrQjZqNlVBOWt4VWVLSXV1UU96MDkrejRMYXd1UFdKRGVVM3BOVG4z?=
 =?utf-8?B?OXE4dGhxdWZuWkhOQzkzY3UwNjN3UkFPUlJiMmRsRnA5anRzSThlckw2eC92?=
 =?utf-8?B?S3FWM2FFWmF2bzdhbDd5UzhIQm1aK0sybFU4Ylg0WHIxTlpNZDk2amcrVDdV?=
 =?utf-8?B?L0FwVHlQSXExYU5VKzFURDJiM0xyS0RIbUpxWGdSYlNGbHk4cUtaS01nOHBK?=
 =?utf-8?B?Q0p0RmFMZ25Kemdpb1BnNi8reUxsUHVuNmFtM09kMnYyNHhuL2l1QmNFR3Zh?=
 =?utf-8?B?VUo2QktxdTljaHlrMmxaRytmUGhhZ3dUTkxmTkFyOUdicHZNSzRPb2VFMDFY?=
 =?utf-8?B?YTVwclM3TEVHRC9nb2ZCd0ZoclZ0MFdIWXFwK0lrT3h0ZjhsNG5ldGxDUzRP?=
 =?utf-8?B?dzduNlhXd3ZFdEZJN05zSHhtYjZyR1ZLVC92WTk3bjFNbG9RbXdPMlB4cWxT?=
 =?utf-8?B?dUpLenpNazNrRHJmQ0lpMlA5MDNjNGh0M2ZDZ2dFb3dhWDJuUTkxak83ZUcw?=
 =?utf-8?B?NUZ6VFNmaXRnWEM0MjBrRVJNbTJGaUFJMDFKZDV4a0sxVm0vWk1RYnNDLzd1?=
 =?utf-8?B?YmlLUmliaTRTTVo4WCtHVGxpNURseTJXL0ZYWTZ3Y0RZVEd1d3BzRnNTOVBV?=
 =?utf-8?B?VGY2bCtMa1d1VHkwcW5sbjU5bk82MEMrWEtiVGNVTnNPNmluNVZPY2ZkYnpO?=
 =?utf-8?B?cG5FeXpYRmpwcGxDT21ITDJjdGdLN0pOWXZkREFERjNvVmo3N2lPNm4rejRE?=
 =?utf-8?B?UnZaTzFPcGVuaEFSTzRUdVgxM0xYclZkbDd3ZlZJK09ONW9Mem5DdWo0VFN5?=
 =?utf-8?B?R2RnN1k5aUlHVUt6WHZaS1prU25wZzg1cFdvcTlUS05HNXc4Z2ZWRXA3eHVz?=
 =?utf-8?B?UEpDTWxTRE5JMjRmMXVEVGNZYUxoQXlDc0pEYk5RWHhMdG82Z3c1NE11TEZL?=
 =?utf-8?B?L2NWTXFDUzFOdWNlUnhVUGpGRUljMEY4YlJsdmpsWjU1aU5hdVlzUzlwa24r?=
 =?utf-8?B?NWxOSnBZdlBzYm5HYWFZWlhZanlvUFZCaDduSmxRakg0WmswdUkva0l0Q2VV?=
 =?utf-8?B?QWkrR1pYcERCNXd3SkNnbFZlVkV0aWQ3SFBVTFFIRFFZQndMeTlnSHlCZVNM?=
 =?utf-8?B?OVVDTnJUVUxMbDcxMFBiVEtBbjNyamxsbTJUSE1KUTJ1QjBCUXUyWlRnWnly?=
 =?utf-8?B?V1BiczA2NnBBNzhqdE1sd2ZrVzNtcWZjNEp2V3lYT25Mdnk5V2xvNHdKNUlU?=
 =?utf-8?B?QzJoWktOVGhKSWFueTkyYk5UZFdYMHpTdmxjMWwrdmZqZTcxR3U1TkI2WnM0?=
 =?utf-8?B?eGZrTE10dHdOWHI4bHdaRityTG5FeGR0T0dtSEVvOUg4YXNUQkVDUjhRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(366010)(1800799018)(376008); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXgwR1lzb01NZWVoM3JiY01kSSt0bXU3UGczampOTW1pamdWN3YrcUZkN2Nl?=
 =?utf-8?B?Mk92dzZGcWxVZ21icjd1WmlvSlNHc096ZDhNM3BmRGozU0tiRDdQdkVwNXhE?=
 =?utf-8?B?WExydFNkNmF6WGI4T0JMdlMxZWtFQWdKVEF5QTIrRk5jVFRsY09wN2RvT1E4?=
 =?utf-8?B?Q2V2MGFGTFVLREgrczkwZW5DZ0I0ZzNhZXUySGJCTXU0U2FyTDd1VmtIbWha?=
 =?utf-8?B?S1FwOVJQN0JlaXlVN0dDcDlsY3VrNDJRZml5TmFFMTg3NWxLM3dkYVhsSW1q?=
 =?utf-8?B?TW11djY5M1Q3M0tvdWowbjYrNWRzOHdPRk5EUHprSFVWVC9oalFsUk95QndT?=
 =?utf-8?B?aVVZVEMvR1RjUzJWTG9DMW4xa1lvd0hDbXV2c0JBOEF3dXZneXd3UFY2Y3J5?=
 =?utf-8?B?VURNSldBNVhNbkVDOUE2dUUxbm9Fb1dkckdCRW5kSjNmOXczU2NRcUh5Qmh5?=
 =?utf-8?B?VEJJa292SCt3a2poVU9SUVhDUWh5S2xYbTQ1Sk80bVorVTRRQXBvRGZwcDRP?=
 =?utf-8?B?dEZWaWRuOEo3S2lnU0hPRkU1eitKUG01VC9jN3pFWCtMblBWWlg0SExKUkRD?=
 =?utf-8?B?WEdYcDQ2dFlwRk1DYXlYU3ZPUEhMMkNwK29ja2xOMEJzWUZTd3VuRENPN0VL?=
 =?utf-8?B?cVJBZGt5WmFycndkbGxDWERWM1BQNm9LTXlWQWpYMFhPRUxiNW0rbW92WGI0?=
 =?utf-8?B?dW5ZQlBPeEpyb3pzcllqTW4vTzVwamdOcDlWOC9xMkxMbmJLekpaMWc3eFVq?=
 =?utf-8?B?c2F0TjRjSFVrcjF0ZXlZUHZySHRoSExLenYzaWV5L0N6Wjh2YzZPZ0tnTVp6?=
 =?utf-8?B?Zno0TktxbVkvSjZZZFAwZy9DYTBWMFhRbUtBZWk1Y3VRTFZER3VTRzRPZ21n?=
 =?utf-8?B?S1VKWm44MXJBVC9Zdk8xQkNiajlJNFJuZHBEaTY1OGFadXJiNEtxeU04aHNn?=
 =?utf-8?B?bDNockJlR1JIeG50dzVXUWU3akJCT2dQUS9HWWlHMFFpM3RzaEg1KzFEVEFH?=
 =?utf-8?B?OFBKUHQwZVlDcStxWDlZU0o0VzRKRDM4VHRDTjFWV2Q0WVk4dXA1VnRaNCs1?=
 =?utf-8?B?WHJtc0FlaXBWU3hteDNUSFJ2WXFIRFVnTXBjWW5aSmFQTmQ0em1YVHhPUDRY?=
 =?utf-8?B?Q1hNd1hzN3MrV0FZWlVXYmt3blFCUFl0ckVWM0EzOVhMZjFhY2d2Zm5XQmRS?=
 =?utf-8?B?S05iQjBROGVvVUpPd2JWRnBlcXlMMUo4TUtteHJPclB6WEtpV0ZMRmE1Nmtx?=
 =?utf-8?B?REgyNXFwNDFXdXV3anB4ci9rbkdJdUNhajAwU2h5bENmMzVmaDZidG41L2V4?=
 =?utf-8?B?SjFjeURiZVNBSTFLTW9LVCs5Qi9ZTXIwelZQNThqYWhBem9hYmdSU0NzLzJU?=
 =?utf-8?B?TWY5d1k5QzZrK1RGWDVTczJ0WlViTmd6QzRxNlp4dDl6a0MveE1aekZhaURL?=
 =?utf-8?B?bzYrTXRYOGQ0UTE3UkplcUxYaittbnNGQ3Rmd1VmeXhlbXZBaW5vQ25QQjNN?=
 =?utf-8?B?cWZrSUlUdjZ0cmJwYW9ndTFRQnlHNXFrNWFURE9uTkFYUWtDd283WjBlRklE?=
 =?utf-8?B?R25aWGhNRklTRjlFeitla0ZkbjZmRmNuMnY5TkVXNWdOZWIxcUd5OVdiR2hQ?=
 =?utf-8?B?dVEwUkx2ZFhGenIvVlN2MlJhcWY3ME1SVzNIYi9FQUpMRzVuTER6aXRyckNu?=
 =?utf-8?B?bm1BalJqV0tSTlZDalFWRVF5UVhLRG12NkNmeFd3TmhRY2ZmamhuRnJkVUc5?=
 =?utf-8?B?VmFPRnZsV3dtVnhlWXhwaitSZTBlMkUyaHlDTXU4Z3gyZFIvbWMvNjZGL2x3?=
 =?utf-8?B?SDNERU1wNWNJK0MwbHlCb29TUmNzbFpuc2hhem9aVDJSY2hqMGhIQnVKN1E2?=
 =?utf-8?B?RTVrcFhvMnlCRWVMM081K1BRd2ZZNTlzYXVJM3crZEFJbzRFZGplTkdnT3da?=
 =?utf-8?B?SEJ0S3pCS0xKRXB5TURKdFpGS2VMM1d6QkFhQlhKRXBzVi9FV2xRTDYzeTdm?=
 =?utf-8?B?UWF0eG1aV0UxbmZMRW5HanRyT0g0QkE2MjlVKzBEY0FVUDA0SXFlUGRzWUdK?=
 =?utf-8?B?SDA3S1VFRHdVWjdPSm5QbWZXSDA1VjNFTDMrdld2VGUwTHFNU3ByeTFTL0ln?=
 =?utf-8?B?VFZzNjVQWlBoQ1hyZk1yMC9ZM1l0R004UHYrNWJneVRuWldzYzgzRGhQd3dl?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13d5e13c-d476-4cf0-5048-08dc8b732a44
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 06:36:32.8198 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tfsuofKvRKyeN47mLJDGL1QEoa0qUP5FHO2H5j2sviaEnbBMeF35uDrldMlI9OCxkTZSMNFyOFo1U3WXTRMXww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6831
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718260598; x=1749796598;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FzpY4ys8+Dii366DWxS9/dV8o1ZWu83R9iLWpNgMCww=;
 b=h2viOcfws0//bNYRZLxxMU3vv9rcg8clCZ+eJ1j7KesbyaSgJp0acYUU
 gNQtlPWr6HZ5Y0u6LOU5UCLjIrVIVXl7wyev+ptuZEr2lUUMriZvwxsuk
 Vx6UI4EcEO7w+Xc5sOsMt5xMs79mp4m8P6pYvMNu1hzxh89AYh4hzHglT
 s90W6uS5rE/l0C+oiVTb/QfElb/Yw2we5L7spJeHa0a6K1Se7iZ0xk2dB
 tGnQy/1xSxcCaLjQNAQsoQ2QuvyOY4Qws19ar5oJbfIVClmE7lykAkfd/
 VBEJX165HJ8a5BqW9vDYnhP9wW8PXvDb9YuZzKlMjtW/6BnrdwOXDJg+H
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h2viOcfw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
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
Cc: intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 David Decotigny <ddecotig@gmail.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/12/2024 2:34 AM, Alexander Lobakin wrote:
> From: Josh Hay <joshua.a.hay@intel.com>
> Date: Tue, 11 Jun 2024 11:13:53 -0700
> 
>>
>>
>> On 6/11/2024 3:44 AM, Alexander Lobakin wrote:
>>> From: David Decotigny <ddecotig@gmail.com>
>>> Date: Tue, 4 Jun 2024 16:34:48 -0700
> 
> [...]
> 
>>> Note that there are several patches fixing Tx (incl. timeouts) in my
>>> tree, including yours (Joshua's) which you somehow didn't send yet ._.
>>> Maybe start from them first?
>>
>> I believe it was you who specifically asked our team to defer pushing
>> any upstream patches while you were working on the XDP series "to avoid
>> having to rebase", which was a reasonable request at the time. We also
> 
> It was only related to the virtchnl refactoring and later I cancelled
> that when I realized it will go earlier than our series.
> 
>> had no reason to believe the existing upstream idpf implementation was
>> experiencing timeouts (it is being tested by numerous validation teams).
>> So there was no urgency to get those patches upstream. Which patches in
>> your tree do you believe fix specific timeout situations? It appears you
> 
> [0][1][2]
> 
>> pulled in some of the changes from the out-of-tree driver, but those
>> were all enhancements. It wasn't until the workload that David mentioned
> 
> No, there are all fixes.
> 
> [0] is your from the OOT, extended. > [1] is mine and never was in the OOT.
> [2] is your from the OOT, extended by Michał.

My main point was since no other tx timeouts have been reported on the 
upstream driver, none of these seem like critical fixes. This particular 
timeout signature did not seem to match any of these in general. E.g. it 
would have been obvious if the timeout was because of what [0] fixes. 
It's also possible these timeouts did not manifest on the upstream 
driver because it is missing other OOT changes.

> 
> They really do help.

No disagreement there. I would've loved to push these changes sooner, 
but we already covered why that didn't happen.

> 
> Note that there's one more Tx timeout patch from you in the OOT, but it
> actually broke Tx xD

If you are implying that our team would commit code that is knowingly 
broken, that is absolutely not true. I believe what you're referring to 
is a change that introduced a tx timeout that also took a very specific 
workload to trigger it. That issue was fixed and not applicable to the 
current upstream implementation, so I do not see how that is relevant to 
this conversation.

> 
>> was run on the current driver that we had any indication there were
>> timeout issues.
>>
>>>
>>> I don't buy 30 seconds, at least for now. Maybe I'm missing something.
>>>
>>> Nacked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>
>>
>> In the process of debugging the newly discovered timeout, our
>> architecture team made it clear that 5 seconds is too low for this type
>> of device, with a non deterministic pipeline where packets can take a
>> number of exception/slow paths. Admittedly, we don't know the exact
> 
> Slowpath which takes 30 seconds to complete, seriously?

The architecture team said 5s is too low. 30s was chosen to give ample 
cushion to avoid changing the timeout should this situation come up again.

> 
>> number, so the solution for the time being was to bump it up with a
>> comfortable buffer. As we tune things and debug with various workloads,
>> we can bring it back down. As David mentioned, there is precedent for an
>> extended timeout for smartnics. Why is it suddenly unacceptable for
>> Intel's device?
> 
> I don't know where this "suddenly" comes from.
> Because even 5 seconds is too much.
> HW usually send packets in microseconds if not faster. Extending the
> timeout will hide real issues and make debugging more difficult.

Can you please elaborate on exactly why it would be more difficult? If 
something is actually wrong in HW, it seems unlikely extra time would 
correct it. If something is functionally wrong in the driver, why does 
it matter if it's 5s, 15s, or 30s? It will timeout just the same.

> 
> I suspect this all is for OOO packets with an explicit sending timestamp
> passed from the userspace, but as I said, you need to teach the kernel
> watchdog to account them.

Out of order completions can happen for numerous reasons, some of which 
the driver will know nothing about, i.e. the userspace timestamps are 
not the only things that trigger OOO completions. We can detect that 
we're processing completion B before A, but it's only at that time that 
we can tell the stack to _maybe_ expect a delayed completion. I'm open 
to discussing this further, but it does not seem like a simple solution 
that can be implemented in the immediate future.

> Otherwise, I can ask the driver to send a packet in 31 seconds, what
> then, there will be a timeout and you will send a patch to extend it to
> 60 seconds?

I hope there are checks in the stack itself that would not allow the 
packet to be scheduled beyond the timeout window :)

> 
>>
>>>
>>> Thanks,
>>> Olek
>>
>> Thanks,
>> Josh
> 
> [0] https://github.com/alobakin/linux/commit/aad547037598
> [1] https://github.com/alobakin/linux/commit/50f4c27ba13e
> [2] https://github.com/alobakin/linux/commit/4a9b6c5d0ee8
> 
> Thanks,
> Olek

Thanks,
Josh
