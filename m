Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3AE7ADD81
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 18:59:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA4D74168F;
	Mon, 25 Sep 2023 16:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA4D74168F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695661182;
	bh=8Mpq+MZqAs2To4t7vrNGBLUcFitRIguIINcEuoKWxn8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L4d+/SMQ9U7F8f1D67+PHmBXebFG2fEtciLdZfa7QPG3HkqNedSoLr0K6ydmQNfaj
	 v/dUztlj4PHF0Zwz2K2B4FXbtqlheupMkEE8teLACbmqlAwWMDXhjbPcGHX/s9s8IX
	 ok5E0Djb8WpH2CSfzsvXvnxyPR9lkx0G8VRYEDAPNLS3sqnu0ql6rM6+8/hlQuNSkd
	 PN0o6DMzC/HoNL5zJJjt8jZuidwv9eiglaKKFFGkRpxim8hwuj4Ej8kinwjpekDvDv
	 Mr9CG0Y2Nk+DWjscJAaMDxJvXBIT3u1a6fgIc0jr5ELHEqS0IFlxjXGwZNolxNndxz
	 6KMB2gl80LeZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjPbCGfFmUfd; Mon, 25 Sep 2023 16:59:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC1374168E;
	Mon, 25 Sep 2023 16:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC1374168E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D92571BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 16:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0D8E6123E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 16:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0D8E6123E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aqEsiowoHf9P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 16:59:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FD116123D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 16:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FD116123D
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="361555683"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="361555683"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 09:59:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="725052489"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="725052489"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2023 09:59:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 09:59:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 09:59:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 09:59:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 25 Sep 2023 09:59:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HTrz/u+EBz11OqVIMMHhtGdjZa5A/4X3i4SnkCYJj0/blS6wBkj0nMF9p9j/OchKTzjMH0HrZuVWSO0K4KfeMP2CR3XDZBAjsLv6N/QO6PiEvF19vFkdTF6rMAacnXT2NZsdAu+9mWGMWHnZNLmHq61yz5ZbR5jucfqkpPlaOA9MAzYKRvFrQzp072XDuyhgl+iwSUl8S+03y5Iw+LeTeq+fXwMeADmhSFjeGt05BNydTvrYpS55zPHp0jizsFXcq/9o4daoCtOnzsdggyvhUbg0v2Xpv9gjsrcIengLdgF26e83cvaMfAZ/sL39lqH9lcTgwOTzoyKaBeVDMA87pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=58DJunnLgmwatLWrqu8m0am80r5AoagABfyvYa67KIA=;
 b=Rsz6IqWTPeaoEnqOFsgCPu/8VBpZr6a5m0ID3fvVged+jFNLUqKQPpqCLFled/wNnG2HZFal63FqHPz9gM48+JA6fkkT1EVfJFmDrzj4HpR/tdooCRcNtcnb+jSiIqeVa2OBO/lfU1YYrdznjQR9IdMMkXCgsJNE9aVfCUo+2ok9WtlbxRE4YvIpkt39XspDvevd9o60Ebqog473UmAlsFmjmAF+lEJPC4G4CAuFMcegLQvEf2If83DvfcOk6hI6iWfDoZyqugxOd7HdQvm/z2JX8OAOltPYs17OQEFTmrBEJopzngzWTbHWKNizOAcdP02nt2PPzrrlMB+feslX0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB4872.namprd11.prod.outlook.com (2603:10b6:510:32::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Mon, 25 Sep
 2023 16:59:29 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf%5]) with mapi id 15.20.6813.017; Mon, 25 Sep 2023
 16:59:29 +0000
Message-ID: <1d3dc6d5-7191-ef5c-7f09-8911c4b4fa15@intel.com>
Date: Mon, 25 Sep 2023 09:59:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
References: <20230925155538.526317-1-arnd@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230925155538.526317-1-arnd@kernel.org>
X-ClientProxiedBy: MW4PR04CA0295.namprd04.prod.outlook.com
 (2603:10b6:303:89::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB4872:EE_
X-MS-Office365-Filtering-Correlation-Id: d46b38e7-a0ee-461d-aadd-08dbbde8c799
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +2r/5Z+osiUq3wrNhtE5iJa/wkeNpoR2KyVvEQyoXY8kR2b/EAl3gYH5h5W8ZM2+Cl+4tjom8ErhgsLIwK6kDCGwA0KEpIevl0d5eQabL/5JKH808UyV5Nz5hP3ugvReRDqZw8BqqoSiSkpBn+qoDuhXQf2NyZ2c7goucum4iESmi1Q1zfLokBPSNRr9va7DDF6oUN5sXzhYH7xMPUa3EJ3+sBLTPJNnM6R0e5qqxW+e8K0ZHBYWRMlAkuxNLFCclCLJzHjMJezT4qlbwuG/+Py58QIlbzmDZAlQdyMAx2pPIK1XOpHEZVJDk1lVgko44sHa+UjuZFi/v9XeABpTGmfUPsMHk+fZ9cOfrBDpFSpfI81orgQGw8r97QkxO+6PkvlaWs9NNrJbUrjcSx+4ZrPfibvCWIE5SJ8OBEqRDTWJpFaCbZkWdz3R8gwlR3ooLGvJZH+h+lRRL06fvAS8569AhGEyPA32fQ2l5SNmijPrt6eEvxJdo7hxzjSdurQL1eeoQ/HAhxPQCn5UfYTkOgVCw7Bfuf5Knhh+ulq5DN7/5ff+1yToqgc3JGZm+xgNnMkEZxMK/DKcnuJSXvwa0gkR+v/V7ieqGBRsZtfjyKUwq9ZV6CfAve1KDt9VS5u1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(346002)(39860400002)(376002)(230922051799003)(186009)(451199024)(1800799009)(6506007)(6512007)(6666004)(53546011)(66556008)(478600001)(2616005)(2906002)(26005)(5660300002)(83380400001)(966005)(7416002)(6486002)(110136005)(66946007)(54906003)(8676002)(66476007)(4326008)(8936002)(41300700001)(316002)(6636002)(38100700002)(31696002)(86362001)(36756003)(82960400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFhuUjZoZlVDUmFtQTBjQnlOQkZpWWhVc2lNRmdKTXNBcmxIZnFFWTFIdUUy?=
 =?utf-8?B?dXYyaUw2dGc2Ui9zRzJ2VkF4VDdsT2tKVng5R3JkRTd5YU5BNkE0RHFFYUhs?=
 =?utf-8?B?L2VXT1RGZnNEYnpZaTJwa3BwdHlnQUxKZDdtTG8yNVZTYUFGcXBhTThocDVL?=
 =?utf-8?B?ZFFLdFZRY3hkTnQ3YVhZblJqVk84bVI5aGswOEJsNWF0U043a2YrMHFMRms1?=
 =?utf-8?B?YnM2QmRvcHV5VFUra1NQOXdlS3RyTUtFTDJBYnVEQ20vV0NYeUlwTzVoRjQv?=
 =?utf-8?B?MS9DV0RjVHVlMGtJSml4ZHZRc1BBSDNJdUUxQ2FzOG9sTHZiTW9nQWdpUXly?=
 =?utf-8?B?L2N4RzIrQmxVNFJzQVIxYjZoZzR0WlViVkVoT0plS0FVcEtlQXYrZGRrR3Qw?=
 =?utf-8?B?UG5iZFFCRm8yS1BmaCt5K1dWeUR6SDBYM0N3U1YraU9EQ2RHbngydTVTZklY?=
 =?utf-8?B?SzlRMnJlcDc2Vnl5L1JsNUlGQmxSMlZuUlV1aC9MMTdmUDF2dnBOOFg5NFdt?=
 =?utf-8?B?YVpWcGRyR3Fwc1RPejBMVWE2ZDFPNnFpWDBEZThRSVc2MHIzN1R3blRwbFpW?=
 =?utf-8?B?Q1FNck11QWdIaS9rVGZQZWlrcWpGSXVDc0dvVDNRZDBYZU5jWG5xY3RvUFhO?=
 =?utf-8?B?cTdOVHQ2UVhmTU9OeEhXQUtmNzYyK1RzWnEyc1h4aGhReE5CZGpYazZFMU5r?=
 =?utf-8?B?VWhJbnF1Tk9MUVIwdUtWTnJOdUZ2bjJjdmVDVVowZmRNS0liY1dZSE96VFQw?=
 =?utf-8?B?OEZHaldTNDJ1VUNTcXBqdHdHT2hjMnY4Rkd3L0FnWnluQ2UzSUR6N0s5RXU2?=
 =?utf-8?B?NXZKOFBYT2tWZHZlQU05OVZrRjRsR3dMN1JKUDVYNjRhVVlVUmxOQWRRR0lV?=
 =?utf-8?B?L1BYVWcvNGViVmI3ckJTNHMzRmJZNnMwRkFFd29zMjJYYjdnV1ZNYnQ2ekE5?=
 =?utf-8?B?U1ZTS3NuUWdGSkVSaXFMaVVrNy8xSlNBUFNoQlhkOUZRWVFOc0RUZ3c4TUFa?=
 =?utf-8?B?eVFvRGlMSWhNUHhQM2pkbmtEdWIrODlTWnhjRUtUSjRWay8xQlk2Y0pTaGI1?=
 =?utf-8?B?VThLMy9DaVJVUElYNVhoRDJFSWxwNTErclVhQS9oUkk0RG5uT3oyS3JJTmxp?=
 =?utf-8?B?U0YrTU5HMVYrYTBqM1pnelMyVUVXa3orajI3QmJUODN6U011anFMRjZ1dXFr?=
 =?utf-8?B?Nm5MbWxPUjk3ZGtSY2Jua2VDZzlDTVlxMEd2eUxZaU1rTW9tdTFkUi81UlRa?=
 =?utf-8?B?WDRqakpQUGJGOXhyWGd0enRHM3A1ZGpmN2J5QzhwSHBHMDlBZ0toK0NuVlF6?=
 =?utf-8?B?Vmd4QWw0T1pvM0VNdEh2c2lFVnp1MDhuWkpVdDRkYjZyWHFNSTBwL3ZIaDh1?=
 =?utf-8?B?UExpUktOUVQvOTdFdmUyOGNxeFBjMy9TNXRnZTBrZlJldWxxVUFOSzEzc2F2?=
 =?utf-8?B?MVRLa3VDRlg0L2oyeUZtRll0NWpaSlF2QkNhdHQ2d054akVzdExuWjJRamhK?=
 =?utf-8?B?aUZZSUFXeW5RQmlEQkY2c0JveDBqdE1iVm5VUStMbDlHTXk1LzFWNDY2cUFq?=
 =?utf-8?B?NndteENRcDFUUVVRSENsZzFvcHpvcFZwa3A3OS96Tms0aUdTbFBOS1cwdjA5?=
 =?utf-8?B?c0FMMjExQllzVmdWMjFlZTdKcjF3eHhwSm9JdllxTTRQejY2TDRnSitMQW9y?=
 =?utf-8?B?YXlqeDZHbnpLNWtlRGhtUHZNclRjMDh3Q0FkTHFTV2NMU3ZTOHhKQ3Fzek9u?=
 =?utf-8?B?cHlteVRXRytLNE51MUpoRlEyd0VEcFdOYzJyZ09IVHB5Vk1yQkxJWE13enhD?=
 =?utf-8?B?RHgxb3k1c0g1anpiTDBLdHYzUVV6S2tGNjNqbkpvZXNNVHIrdzBUcjBybkFF?=
 =?utf-8?B?R2Z4bzNoejRDQlBkc05lMTBHNkVYNXBzMURHV09WQk12NC9KS2hxc0JkemJH?=
 =?utf-8?B?R0hMeVk1K2FGTDROK3Y5QkkyMFJwN2I0Q3dweGpiSWpEbUtTdm85T0tXbjM4?=
 =?utf-8?B?TGd0Ly9xaVJrQjNEZHgzdjF2aVhqQ3RPQVY2R0V3TlB4MVdkQXR1Z2RLTDhr?=
 =?utf-8?B?d3FhZzcxc0RvYk5TMk9QWTlHYlJzaFZ6b2tzbU5oZ0pMdll0dkVqdllCY3dy?=
 =?utf-8?B?WVpQYnRwaFlZUzJZMUpJYTFGQzhPb1I2SkUzb0JPUnhPV0QzS2hteStjU1pi?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d46b38e7-a0ee-461d-aadd-08dbbde8c799
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 16:59:28.3770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gt+UcSV4Z3IoDb0MjL0NIFUgZ4idJ+/G/vHLHG2cLDXHS516fFPWaapNHf9rb+ec7mxTBfKp1EhzLu7BYQMiybRgCs08c57AI7frmX7DK1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4872
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695661175; x=1727197175;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r1XjrIrR6sIc6sF1gvl7dIKiUC0NvC/mOsIcOEDbHR4=;
 b=aOcVvdm7ITLeWLRWlZXiUJPr6KNSgBa5jsrT2AFz2Y/xruNN2cMEWrKK
 j9yLF8MqQarIXQcpf+Xa7yv5uzQGhOjv8yD12yR9nUrWAvxYZuxZmydvc
 GA4SgUnj7Se27oM/74FJSjeruBkkbltEf52A26WuueUqnMiPhDyp45Pk0
 YtiYSzXRMdu18VLuxEFnCuGY1titDQz2eozlwOWEmdO9Hgz7lT7o4LriL
 28Qrphz4F9w0eQItON3/WVo7V3TWY47ApfY6SxDXzTNQo3ywwgEbuaPDe
 ZVkLV7GHvRHWM+5ZXtiyUbnv2ZJUel0k3qfCnupzHttA5qYy9t8cxuUve
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aOcVvdm7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: require PTP clock for building
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>,
 Michal Michalik <michal.michalik@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/25/2023 8:55 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> A previous fix added PTP as an optional dependency, which was correct as
> of commit 87758511075ec ("igc: fix build errors for PTP"), but this
> has recently changed with the PTP code getting more deeply integrated
> into the ICE driver.
> 
> Trying to build ICE when PTP is disabled results in this internal link failure
> as the local functions are left out of the driver:
> 
> ERROR: modpost: "ice_is_clock_mux_present_e810t" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_is_phy_rclk_present" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_name" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_get_cgu_state" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_is_cgu_present" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_get_cgu_rclk_pin_info" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_type" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_freq_supp" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> 
> I tried rearranging the code to allow building it again, but this was getting
> too complicated for an outsider, so just enforce the dependency to fix randconfig
> builds again, until someone wants to clean this up again.

Hi Arnd,

There's a pending patch to netdev that does this [1].

Thanks,
Tony

> In practice, any configuration that includes this driver is also going to
> want PTP clocks anyway.
> 
> Fixes: 8a3a565ff210a ("ice: add admin commands to access cgu configuration")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

[1] 
https://lore.kernel.org/netdev/20230921000633.1238097-1-jacob.e.keller@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
