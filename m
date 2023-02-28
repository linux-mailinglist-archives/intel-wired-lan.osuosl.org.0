Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 151546A5BF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 16:30:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AE796117C;
	Tue, 28 Feb 2023 15:30:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AE796117C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677598233;
	bh=2mUDYPcm42ZBsW4Sl4dgcRAU/yW4U1ErSVo8kTauHHg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i1+rKVRFqXWlCfk9OuSVSlXnrvsC3mM0zbCA+OTrs806fRGITnVz9oLMNMZTxpJpP
	 aNuFK1ZIQD1XGBbdjUX3sYPeai6EIZCoFQvWUpCYyrZwnON2Lw8oEk2i1g0KPKa/hJ
	 OVgo6Um+mjEv5YNoKJYKHLoW+VR8xp4xlNMZz2cWo0dQntrOvaKIbPIQ9oi40/iTCb
	 wDsEs247nknKMoNg6cINBgbCN7I0aZtdZ1iX4bCrgY++6Ku/jiM/iUSUqu7uFm1fXZ
	 XDjrDwJC3+70SNF/m5cqluVvAsdcIGmw6og59OszsIyQ0BJ7ItJlnrM9CcioQ7FMR8
	 GbE/iyn3n21kg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GSUTDvGjIHmY; Tue, 28 Feb 2023 15:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3874F610F2;
	Tue, 28 Feb 2023 15:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3874F610F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E89C1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 760D18203F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 760D18203F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0_5SCTCvMxuI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 15:30:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4C6C81F5C
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4C6C81F5C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:30:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="314585040"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="314585040"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 07:30:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="674178186"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="674178186"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 28 Feb 2023 07:30:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 07:30:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Feb 2023 07:30:24 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 07:30:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWGPzvbzjX7JvBNnnpBxnFyDgvL9LZzFMDoTTYesnF9OnX+VMfyrsMNx3SRRH0BO8UolLFKUyA/axEgNN+Rz1eoer3z7r15ue9ccOT2V+usfnw+a2ehuuFQVoqQkob6BWnmxB0PvNC1ycoMFSTY/xYcM2at2jtByAEK7yfra1G4sac9orqUJxWR8zHiNqSWI6elHm4Xf38XT9IGWVN9aQhG6kj+72zo5hgDV6jFOp2kers96F3h5aLIG0IfEBhtZjoT0yO/UqXSMk01JyrmH3+lMIM/vbi9tt7/FCbDCGeJQwd6/MxIVmlOqpqdEgdoQCviPFG2aA+TzmJlk+vEUlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dXnl41b9Xf/CNvgkXoRCGiuPvA2Ubq6WEA6fddy91B4=;
 b=GKaArZuEDGcN7Z6Nnr64aB3v4vkKwM/LaVsvrIWclRU0zJde4RaKgXdjO1CQdY/UpqIzbwp7fZ5cyW4IbxmG/XCvSPcR8j3AuBdF6AtAebCHcvt4ja7H4R93TTg1P3z8STuAcPhKgM0SOYPir9VenYA9jSEG3mzQUdUbbf34NBKEVC3E3iv/WC1PK5TCB31pU1ufV5GtOGmL7Io38ayFOcenOt4mrSHivsTUyjx3fnlW37orJDitv/1p6ebjfnfJ9VLVl05NdLnA8+DY4lWuhXVKUtI+7NRqjsw7QaSiwqVTfKwjcTu++BfnBz/Ct58wG6ZrrgMsQI6qc18FQw+40Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CO6PR11MB5665.namprd11.prod.outlook.com (2603:10b6:5:354::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 15:30:21 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 15:30:21 +0000
Message-ID: <08101843-9284-a9ae-8898-559ef2ed6a20@intel.com>
Date: Tue, 28 Feb 2023 16:29:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
References: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
X-ClientProxiedBy: FR2P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::6) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CO6PR11MB5665:EE_
X-MS-Office365-Filtering-Correlation-Id: f9adac24-59f7-445a-7879-08db19a0b3d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T019/TzRYfcYy3b54gupjEC3iXbdzjQEImSBIDvkY6PRSq/8dS24k2tepoLctwLPxnGALmpj0vhEWOkKWJlO6zc3EG96095Fpn0pIwz3w2Uz8gDnRCMJqlr/Ww5tmHxjrRHnxWF9+6nTBxEi+m5mqIJRoeOVFsRF+UpNr7fBOXEcgKmo/PGLbzApvuqRWTBaP8mVy8pXRhPe9hHUsQgDvFpSTGpHlFkVtrIi90kEGM1VL7Fnpiy7coaV2WMB5RTB3+hiqYNP1jja6F473k4mDFFJavLF8BrC8i5/UZyt0YQYGF+YQPn7DHDFtSUKYNdaqhGSCCmMBxf8XhzGWkuSF23mZrZIb7758WoWK2EGcjAdlMgFmPIXWdX4AOU97d24C0u5eHFX879RRtFj/i/sMz5ZtZHsaFXqNh30Y+TEKkUGcFPWdyKcRYPxPIpS2wClckZQANIWwZSAlMhwBGPkMT28q+z7TA6+KcDXB7FWIQ1I0/y+XTNHR/v+KzKouWSkS6uGRMG1f/kk3In9LpHKrLThu2WLbL+e+n6gEZ9SB/fx5sypYTlt5pbadlsJVUdezzvpSwqLQZ04WZUusgKhqZ2/iZY8KjzEZZtooANxcC0/38aB/lSfrrnKsTzsIf2u1t3XYfApAmeosfEkhgxbsqa7tH8VFnVs8oQSvQIOA9jBRWMEu3nitOvr15e+LGovNMkQVOI4fBuNSMNUZ0n33HewmD1grfHJ0/3oe7vuFuQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(39860400002)(366004)(396003)(136003)(451199018)(316002)(37006003)(31686004)(6666004)(107886003)(31696002)(86362001)(6486002)(6636002)(5660300002)(6862004)(8936002)(8676002)(478600001)(66946007)(66556008)(66476007)(26005)(6512007)(6506007)(36756003)(186003)(2906002)(2616005)(41300700001)(38100700002)(82960400001)(4326008)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QThaYlhsMUd1VVByOXZYU0pZcHJsZko0WU5jT2VtM1FvZFdCckpjdWNiQk5W?=
 =?utf-8?B?NTBJT1VvRUFCZDFYd0RJLzgyNmQvdHRmeVNwMnRPM01CelU5dmZJYlFVeUlU?=
 =?utf-8?B?b1pBMldQUlZidE8rMkRGV2pRTnowR0V5SU1rRTNCMEdZR3J2aldVZ3dUancr?=
 =?utf-8?B?QjFQaE9ubXZNR0h4UGw1dUlKdU0rd2Qyckd3WCtkaTdnWE1abGNTaXRMRU10?=
 =?utf-8?B?bHJjOHNXQ210Y2lyYThpdEt2Ry9XTXhsQzc2bmlWQWVHMW5CQkxUVTAydTR3?=
 =?utf-8?B?b0tMRmxOeVVPcXFQNnZCN1crR2c5ZmxGK01xSDhVdVlUZktjOXhxcGsrcVd1?=
 =?utf-8?B?ZlplbnV2M21SeENiS2pUaFd6VVlKV2NUZGtvd3cxRFFvZmVHTjkrTG1mUFBX?=
 =?utf-8?B?MXhzcDM2WWdmck5MSzhJRHg1clZXd3k3UjZWY29kWmdQeDh2dnQwOGVvK1Rq?=
 =?utf-8?B?RDkwbTd6NmhwQ3B4QVc5WWdHL2xjQ2RueXU4N0lBS3p4Q1JtMDFxNzlYdVlH?=
 =?utf-8?B?NExBSm5yVUZ5eVJMRk9jbjQ2SVJVbWtnclhpaGFHR2VwWmwvRGVKd2VXb0w1?=
 =?utf-8?B?ckkwSHBWUWVpU3JlaXl2TUxwcWhUelRJQyswOEFkRUM2VUF3Um0wbE5ncDdX?=
 =?utf-8?B?NEhBZnZTcC9taXQ2Z05LNEFVYmp4dEVUcjVIQnpTMzJYTXc2Q0hDNUdrRHVE?=
 =?utf-8?B?VktwU1ZWOUZ6WFFJdFVOT0tXTDg0K1N6ZytWaUdqbWlHS3dqVVYxdkZDQlhq?=
 =?utf-8?B?OEoyZkpSNnNWMTNQeEVwNlY0dXdJbzRqVkZoVnZpM0o2Zko0d09iODJ2ajMv?=
 =?utf-8?B?d2p4YmNOV0pFU0RTdy9La1VFdXlCMFJxbU1WSTB2SGtoMVp3K1ZmMDlCUTdu?=
 =?utf-8?B?dldLVEhDMW9EOFRwN1haYmpTVmpwVDY0Umg2R1pCNWpLN3ZZYXJNZzlUazlG?=
 =?utf-8?B?NjY4eEJaYytUVjErNE5ndjAxYnJ0MVNOMFhXNzVDcUV3NGlrajRMWElSVk5m?=
 =?utf-8?B?ZlozTGZqaWdZN3NBMUg5aTdVd004R2hiT1RpMnFIZlh6L0s3VmQyVWdvWTYw?=
 =?utf-8?B?WDJiRGNSNEh6SHFYdU1SaFEvOU5XNjlwZFNRdytKRTQwcExBcW0vUjFsWGJw?=
 =?utf-8?B?di9pSTYyY1RhTFgzcml3a3JrL090SUhBTHRSQ3JLV0N6RlJnNVBnRkRZSGhT?=
 =?utf-8?B?VkdSVHNvVGpKMmF6QzhLdU1CdkpSaXAvWFFCNFZvOTZBOFVPdWZ1WVhZdjFC?=
 =?utf-8?B?RnJMRXlIcGNPV1h4THh1Tldwa1dTMWxLY0IySnBiZWdiTjRkdWcvR0NmeGxl?=
 =?utf-8?B?M0ZDSVZkOEZIcnZ0WlRISCt2ZDFsQmV1Nk1PS21yZUNVWGg2RHZuN2RwdnZH?=
 =?utf-8?B?UnVOWGRzY2YrYk0xQkxHTm5ZZUdjS1FiOGp1TlVJd1ozZGp0TWVUaTl6aUhi?=
 =?utf-8?B?RGdSWENQaFY3Z2ZFTk9HUDVkZnIrdmdxcnR2R0tCRFVwQXRqVGdLd3RUVEND?=
 =?utf-8?B?NjhjTG5wWVF0aEZPWDBxTWJHSlRCWlFicE5tS2dRSkN2a3FYSG9NNE5GNVFs?=
 =?utf-8?B?aTExYlUzR2JPSi9jVEYrbUM4eUdTT2tnZ2NpYWxHbVZuY2dULzRNWVBwS1ZY?=
 =?utf-8?B?K3ZUaUJYbTFIU01aMkJGMXZKYXZDa2ZsMURpUVI5YmVwcmNLUHVFMDZxMUVS?=
 =?utf-8?B?OXlFV2tXNGNxcjFqZllLWk4yd3dqQmZqVWNjOEJoVXBQcUdaV0R6TXZkazdY?=
 =?utf-8?B?Q00zRUVkZ3VWdldkaXg3SjNtREpYcXR1NW1PbTI5RXpWQUxpVmtobnhkQkFh?=
 =?utf-8?B?dTF6V0FYVnlzQ2tZM0cxS1JRaERhcjQzZTg4K0VQRVZDRGlVYVkzVElmbU5O?=
 =?utf-8?B?eStFbDRZQ09jdVJtQmdaOGxOYldZMU1aTkZqS0xlMEhKT2tQOEsyaTBTOXQ3?=
 =?utf-8?B?TEFqZ09Vcjg2bXFLc0dkVEJocEoxN0ppb1l3cy9walorTUtUb1JPdFN2UURJ?=
 =?utf-8?B?dzBDU0l6V3k4NDdmYlV2MG9xd1ZHL0xBelR0MlNEeVQ4SEQzbU01MkdpMUl0?=
 =?utf-8?B?VEJFQkx2aDVYaVpHZm9sNkhXOHVBTSt4ZXVjQi9XTUN1MWd0Lzl0MldkVFA0?=
 =?utf-8?B?ZTVyYW5TUnBCVi84emdWaXFXUWNaVkI0VHQ3M0UrdkZFd0J6L0ZwWXB1RGNs?=
 =?utf-8?Q?MIWj+T/9nswNP9H2VnZAwqk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9adac24-59f7-445a-7879-08db19a0b3d8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 15:30:20.8951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oFUXF8/tKIzne/T1biagSMPNFf5IsFgrh3FPLpgkEM/oZSY0P6S+uDx0w6mn3ZI+MT+sSD73KKVwRn1yEhtoJ7CUSrgbGc2N/gc5NdeuTtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5665
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677598226; x=1709134226;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MoT2AqUWF6OnxYlOuPbRKSv49wlrDPieM/XssUpia3g=;
 b=A8d7fTpq6gyeP24cmLhalTbXR/SNFKyvEJLFEyujOa8OAj5Cd5PF8MKX
 D5aX91tiK5j3a3Ii0nDI9K5Y2T7jzbpcpDQOREQMn5pPTfSTenc/idLc5
 GMlTxsDOD2O0FJ52yZAgznr5G7p2Z8IxcXElasMPZyvhnCmocdYUHzRnx
 Fyq9DxjFO7k/Tl9uXzvlxsy/B6imCGPokLJEhOWLPqsmcqC7b+vEIuidm
 c58pPk8e0Rr6vU8S92/5TAxXoXiq/DEYQnCG6um5pLdnEjMLNBAJxFwAS
 +qnWFNYL+RRtYlPHUHShAYDwauMQQHAtpc2fDCnUwd4pDKxba6ZH9jhf3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A8d7fTpq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix implicit cast u32
 to u16
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
Cc: intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
Date: Tue, 28 Feb 2023 09:49:15 +0100

> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> Fix implicit cast by changing argument types of two functions to correct
> types.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>

Regarding the actual patch (below),

> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index d71ed210f9c4..830fa53b5e0a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -701,14 +701,14 @@ struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
>  	return bld;
>  }
>  
> -static bool ice_is_gtp_u_profile(u16 prof_idx)
> +static bool ice_is_gtp_u_profile(u32 prof_idx)
>  {
>  	return (prof_idx >= ICE_PROFID_IPV6_GTPU_TEID &&
>  		prof_idx <= ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER) ||
>  	       prof_idx == ICE_PROFID_IPV4_GTPU_TEID;
>  }
>  
> -static bool ice_is_gtp_c_profile(u16 prof_idx)
> +static bool ice_is_gtp_c_profile(u32 prof_idx)
>  {
>  	switch (prof_idx) {
>  	case ICE_PROFID_IPV4_GTPC_TEID:

What is this change really about? It might've been a part of some bigger
series, isn't it? Does it fix any truncating-related bugs or improve
codegen, which could be observed by objdiff or bloat-o-meter? It feels
completely out of context.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
