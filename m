Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D298C8E68
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2024 01:10:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46291414B9;
	Fri, 17 May 2024 23:10:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Ko1TxKp60SW; Fri, 17 May 2024 23:10:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CDBB41482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715987453;
	bh=cLBzqKNlN54CPSj8TiUIYc2g0HMp6UvnuKne4TLOzm8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NTrHg9Fjmie+G4Ajoh0Lz/xkxKB5PmfFBecUuX7o+YqxT9VNVaNT2Y6FFe20ZbQzq
	 SgMF93juDP6oGqPsFmp/Kea41G7NHRxlGoZbpfjRp2fod0F/4UbXXDujVkWpmNgElI
	 0ut7DDHOhPsxY+elCZZk4Dwf6gM8ETzXSw1zXoA0A0dl5S+dl7bNI8T2ZsTr/RGWIh
	 mQ3xGXgk8eB+KzMnghjpCRqWts8iH0Wxv3O/aFvCjRwsDRUd75Qz/4TrPSoLtxpHG7
	 BWio8EI2YUf64o8bVftkFzxWrJlDfcnaUpaLBqyp7kdn/H7LVwADLlliOrI2r/kE+L
	 mkGhuKTwczbgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CDBB41482;
	Fri, 17 May 2024 23:10:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94DBC1BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FBEA607B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:10:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G6CsRL1ELNky for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 23:10:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8705A607B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8705A607B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8705A607B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:10:50 +0000 (UTC)
X-CSE-ConnectionGUID: s0n71KCGR0uPjHDMe14JYA==
X-CSE-MsgGUID: tbBNErNuQG2gk6y/xMz92A==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="16017369"
X-IronPort-AV: E=Sophos;i="6.08,169,1712646000"; d="scan'208";a="16017369"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 16:10:50 -0700
X-CSE-ConnectionGUID: B3RAd+48S7qIrngn1lQYrQ==
X-CSE-MsgGUID: G8UINexuTjStQSog/ItZwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,169,1712646000"; d="scan'208";a="69388420"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 16:10:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 16:10:49 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 16:10:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 16:10:49 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 16:10:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmfhIh5DlMlTgWqOnE9Zw/5Usw9FdbuTMMgM3/XmTRLMGSSlrZ6YcwQX0HckVJYE4S09z2w+IE1cC+mFInrI6BsYpuWWFf+2CE9kf8YQIauFMUMpryRrS9Xy9QYxWLITgBJTinwe2Zxc1Pg9e6ZVYyD7oGzOSp3oCB2PftJsv4Dj7MBPAxAZvAJVbdfZJ2sYpsMbSakuBiqR8iYEIKWlpBQfhYVJBsp3cbGh0E/042q9+/83+L5LpojUy+NKPswIvjd1RlNgdZvCZS5lcbzIWHXDxF7U7wrZMsfJ0SMhBHie00BJ0lN60t4MM/zk4FefEonaROQsUygIOi/FVEfwQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cLBzqKNlN54CPSj8TiUIYc2g0HMp6UvnuKne4TLOzm8=;
 b=XFhWQsrzNb9AlwT/jlMaUYahNVONY5rwo4jzrOkip6KHdswHexahceMWs7KtM6G30rB2FA87FsqQyFNLQFmAKHiQXaPW7GrE1W8bSlQkwab4I9HDtd8VbgqGBZlgawH+dmVKpfSbAGpcLH+WaSopU+rwUOKWYgmcGuzBIe+w4UxynXSQo3ZiGO/AHAG+LW5zDRiweXYyqeImOZcCW5UGoOEfAe1lCC82LVRkadokZJgsNYyK7Gf/gcm8DY5/JAr39FDN+dv/H6vh+/7YeGd3D03mr6MZY3swigzrbWF08JqkPkezsKUa0mYf9Ez5fxSn50naRiSTw0eLpwjXaZoVyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB7942.namprd11.prod.outlook.com (2603:10b6:208:3fa::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.58; Fri, 17 May
 2024 23:10:46 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 23:10:46 +0000
Message-ID: <7d2e453f-8679-4dc0-9798-e13bfbc93ea1@intel.com>
Date: Fri, 17 May 2024 16:10:43 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0064.namprd03.prod.outlook.com
 (2603:10b6:303:b6::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB7942:EE_
X-MS-Office365-Filtering-Correlation-Id: 14e8bd0f-8fb0-434b-d264-08dc76c695af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b0plVkJKd0NDdHZlaU9VMjl3T2RhcE1LL2lLcVFBSUxyT0cvc21YVGt4djRT?=
 =?utf-8?B?Q2lUQlFrV25ld2NCUG1FUXFETFh0S3FqbWdzMGx6RlJUU3JYTndHa3NWSUIx?=
 =?utf-8?B?UlJ3UGRuZWQ3ZWxtaC90bTF3ZnB3OVdnNWs0WXFsNklZUDBHUlhQMjd1UUNB?=
 =?utf-8?B?VkpTc0JBdGpDSnNpUVo2MkNvOGcyOWhPVGllS1orTXFmSXY4aVk2YnAyMmxo?=
 =?utf-8?B?bFZXRmhmYjY2Y3lBU3RPRVU4dTlFVHVhS0V5QUpIZGVMVzdQbWpaOE5zb3Bw?=
 =?utf-8?B?OFRFZlRhYWtmZFBBREthVUcxNFpsN3hqRzNidVUvUXZnUjlUL2YwRjBtUmtm?=
 =?utf-8?B?bTdlcDJ3MjNhRlVhMWlyUElqazM3WkV2azNORlB2RG91RVBDU1ZINmJYcVAy?=
 =?utf-8?B?VFlSQTNWSzc1MFc4eEVnYklMYnJXai8zYWdpTUdDU09Ib1A5cUs2bDR4TS93?=
 =?utf-8?B?cDdreGlhcEliS0hOTXFoVEpLbytkbGlRVXllOUtmNUpqTGc1R241ZVF3LzBv?=
 =?utf-8?B?K0N6RHNIUjdDK09IN2hRa05wbk1Sa3dLZm1odi8vUzErRU9uTXQ2OU9SV2JY?=
 =?utf-8?B?QnNaTUYzeUZjN0FycDhoVzZJYzlZV05EMXZFcGh3L0dqZjlpa29ST05DdDJq?=
 =?utf-8?B?SFQ2U3N2NGZWbjRobEk4Vi9BdElWR1JIdzhlT3RZTVJFdnpEdFZ1UWJZV05L?=
 =?utf-8?B?c05ackd3RmhUZ0NrR3Rrdks3aDd3NU9iRlgxaU5vYTZmU2tJTDNNRFFZMWxn?=
 =?utf-8?B?c3c2cndzQU1Nc0pMV2Rhb1JFRDVDalJBTnpiZ2VhRDV1SXJJNWpCUHZaZytm?=
 =?utf-8?B?WVZUUVl6TkJLaHphY1lNNkhPL25JbzRyRk9WY1F1dENCVjJmVEF0RVQwSzNp?=
 =?utf-8?B?YUtCZWEyUmMzZjhVY1ZHampYTW5HeDg0aHM3cWtBRW5IT0pTVXZ0UXpBSGpQ?=
 =?utf-8?B?QTdwc2xCZEhEd1BEVjVram9ud0ZqNXdoTVBqdVZGdGFnZS9JZEsyYzRUd1RT?=
 =?utf-8?B?cUphSjFUV2dFcTdua3pVS3cvY2RrbTR1TTJYUDd2Q1czZEhQOFRQUjFDSE5y?=
 =?utf-8?B?L0lTOEZpSEJValRYMVRhVi9heEh1ZThta0I4YWNsUUtDRnByZjMrWnovMlVL?=
 =?utf-8?B?d0R3dFJLSjJXOVZkYmZmL3ZkOWxwVlpLdkJKVy9KTmNHckdkbVNIa1g5UGsv?=
 =?utf-8?B?ZTZiU1JrOUZBNjQ0SkZSd3NHUVRGalhWS2dIYkdCblFMZm4zNkVIcUtzNTB5?=
 =?utf-8?B?Z2VJcGRnMStRTFNHazFDcDRlNzRwelRMUUxrTDRzM3E1WEEwOW1PeXF1ZVZW?=
 =?utf-8?B?em5tYmEzYXZNR29wcERYYzd0MWNYd2tuUGVqTGZtUzBjaUFwMGZmK1I0UG5l?=
 =?utf-8?B?elh0ZmFaR3krNHlzS1dxNmptaGtDMU51QU1NMUZqdzREYzd2YkRQcGo2MmxQ?=
 =?utf-8?B?V1YrYkdYWjVCTVEveEJ4eU10VStSMWhsdmVnV1hQU0hPZE5HMy9ETTYwRlVH?=
 =?utf-8?B?cmMwZURyaDkvaUt6UzBpVTRCaUozeWRMQ0R5V3BvdHlGMW5HdllpZG00MnZo?=
 =?utf-8?B?ck1kYmdJK1E1RG9pWEtsNUVIdDhPQnNodnJqSUppeXJSaDFkOEkxRHRiVjBI?=
 =?utf-8?B?bDZObUVPZ00vMXorWGI3c3pVTlpsUlk5MHBwclY0SnRjdXZYcGhVUXlFa3Nr?=
 =?utf-8?B?aU9zMFR6ODFQRjR6d0xIZWhTNU1zc0U2YkFzVVd4bXU0MndYUkZKWjdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWRwUUVKdnp4aXBmOUh0V0NSK0FVNlluQ0h4ZnpEck9FcDlxU3V0OTJzTHFr?=
 =?utf-8?B?YXRyeXNNZmZ5emI2SWRTc3dScXlaZVdQd1JRazlHSVNubDJIbHZaQ3dORDBz?=
 =?utf-8?B?MzRSRXlZTTZlWndCeTRCaWJsTVRnUDQ4YnhUVXM2Sm0wY2MrcWU2dmJwQzJx?=
 =?utf-8?B?WkRzOFZTZVVxREdjbWx5dDVlTEhrditPNTYyaVlXaVJWUVlDcDNSZHBYOXFI?=
 =?utf-8?B?UzFyOTQ5QzBQUXVnL21ZbGpBQ3pjMzVIdmUrbmlJRmtNSUdUZVk4R25wN0lr?=
 =?utf-8?B?VnRHcW5Sc0draHc1TG5xYThCd0trQTVudlY4ZGdlYTRWajVBc0l3TUhnV09u?=
 =?utf-8?B?b01xclNPZ1VEMExWZEZsam1IQ2JTZnJGTHVYRUdRNXhQQ1pva0FNSlg3SkJU?=
 =?utf-8?B?NGRLZUUxRE1xWWdUVWlPT3BlRy9DS1lKMXYzZ29YcnB2djA2VnFETkIvQks4?=
 =?utf-8?B?VTBzSTkvWmtXK2p1VFlRT2Nwem1iOXEwenZzY2ZBaWEvRzRnZDhoajcvQ1d5?=
 =?utf-8?B?WVBpWFRKbUY5am1KcmFoOGY2WW40V0thREdNNXA4djJwc245bHY2YithZ2hX?=
 =?utf-8?B?ODA3OTgwelR0d09KaFQwdmduTEwwcGVNRFFtM3NOalZGNHU2NFdjTi90T3NO?=
 =?utf-8?B?NVpoNDZFU0pWTXJ0eElHU2tLY2JJVVVTZjRNRHlTcHA0cnczZmxBUVNxekJx?=
 =?utf-8?B?dU80WWxxQlBtWGVBME1WRFpRY012bm5lSlR1TWg0cFJlKzRKTkZOQ1UzWlA5?=
 =?utf-8?B?ZmtGNlRPYkpsMGh0VDBFMFBVajBWQUhRTXRpZy9NUGQrZ0tDWlF5TFV1eFBh?=
 =?utf-8?B?Q1kvRUxLTnc4UW1OYm1EcWZpK1RPUVBlM0ZvSVNDZ21VemM0eDllNXFYM1RO?=
 =?utf-8?B?ejI1NVc3TXlsQVBGdU9VRmZHOVU0TkpYU2NyMSt0WXgzU0hvb3VwSnFkVjRp?=
 =?utf-8?B?dThWbHo3eEhXVGtqRXhUYUtGa2VZOXE1aUpnK0c4b21Bc3N5OGdtT3Yvc3kx?=
 =?utf-8?B?b1Avd0JnTG1XRWdlVW5PTVBkK0VnUUZQcC9pSDJoVldsT2RpSkY5QVhQa2Jz?=
 =?utf-8?B?d3djcis1R1dRWDV2WEdEbnhPS2w3bzhvb3JRVStmYnRVWlhkb2tOU1FDZ3Ru?=
 =?utf-8?B?R0JTUk84OHlMWkRRRTl4WWlLRDJ6WXFwVjhXZnJub0F1YzVTWTc4a0Y4QjhJ?=
 =?utf-8?B?VGMwVGZXaVRtckhWU0JBOXdWRGd6MEYxK01FYXg3Y1hsVnRnSEs5Z3p2aTRZ?=
 =?utf-8?B?c0NBR2tmbGpTei9CbWM5ZlV2dS9GN3c4bk82MXZDd1FBQlJOL0phdS80RHEv?=
 =?utf-8?B?Zk9UajV3TWEwOW1MNlRvc2twaU1mei9FeGdJL0QzQVlHNWR3UU96ZXlTVXBt?=
 =?utf-8?B?SlBpQVFBY0NMZVRWL0l0cktmL0t5VEh2bnNLVlhoNjVSRndjd3Z3TGIrT2xM?=
 =?utf-8?B?aWt0MTJnWCtKNWE1MWE4U3VPdFdabWRqTnBpcVAwRDh4MGRSZCtxTGJkYnNG?=
 =?utf-8?B?SzJzSHNvZzR0K0xzZVRZVXlMTVVNSGErdlp3VUdvdmg3V040cTdVL3FmYUlY?=
 =?utf-8?B?L2duS1FBeFp0cGVYSU04MXNmYWw4UVZmdmFkcERkZWc2Q0RBeTlkMmtBektI?=
 =?utf-8?B?WkU2di9lS3EwS25hbkw0VjBlL2lnelFFNDY0Mjg2WkZ2eXBhYXNYMFhrb1lm?=
 =?utf-8?B?c2N1eXBya1gydlN0MFlNWmxQK2FHMmJMNWdLQW9LUytHTkpzbXd5dmRJZ2VH?=
 =?utf-8?B?QXpaTmpSNUZPbUd2MUYrbE1ESXlsQzR0bnZ2d3hhdWdIdmN1VGRGMkVNUDAv?=
 =?utf-8?B?dk9sTmV4M0dwVVpIdm1tVHlVejFuMUlpUVpqa2NLZ2ljVjJ4QmZIOXpON3Iy?=
 =?utf-8?B?K212S05QYmFrZi91Ly9UOEhQSDdjRi92NktHTjlBVXE3RUovWjZKMWtoOXF5?=
 =?utf-8?B?U3Q5R2dFOFpLZGYzWXN6UFFoWlVUWEltaDJ4RjdsUXg5c2RxRjBGSXgvSU9O?=
 =?utf-8?B?R05IcnRPOHFVTTJRK09zbG1jdFJEd1JHT0hUZ0xvb2Y2QytxZTBJUVZ5UExx?=
 =?utf-8?B?YmFva3BwbzlXQ3J6bW9BZW5wME9PbXJOb1RFb1M1K1dtL2VSOTBBVC9tUGNq?=
 =?utf-8?B?RGs4NHlLTkY1Ty9xRFlqK1c0cWhvL0g2cGhuY0c4Q0V4OFNYRTNyS3ZnSDdS?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e8bd0f-8fb0-434b-d264-08dc76c695af
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 23:10:46.7615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tLVtFkelHcC3NYmavyttYsO6zZuGbfkRtgYHmERdHt7R1EbSAFMA8qLtgfLRy9CgsLuT3fR2O+o87JIKj5YHZjPeLdTiCzuR4dGBQ92zCJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7942
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715987450; x=1747523450;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=teG5li6ppebNJslUAee10444Ysya1KFaAlbogyjbc3Q=;
 b=D6bcI1t2syC5oxGP4Ayx+QG+8JEgrMuD9XG56nLSj/J1BHUtjVSkRwkd
 39uWT56za3KQlaB7ksS4R6a/v8pVzOpMAJ5baQQ4w/ktKW8fcJppy7ngf
 DYo1LnxxLEiiSD7m7+uQ9GI/aW0H7uRabYxiGxa04AefWf7OP7+WpEdU8
 CEDwplwfqhiqyUM+mQjtY17l4Q0eCK+jYUq/eWq1gM93byICboRiY8+As
 4GmpK/VwIE6CCGvin1TNxpyV/pIvs3wtK7+1+dCN34yY3ktfPXA6eCZSe
 h45WWSp+S+CX9SjsKJhPWwWBbu5I8KPkaJ3AZCXklCc0CE0mNuyWVGzTk
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D6bcI1t2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: avoid infinite loop
 if NVM has invalid TLV length
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/17/2024 4:08 PM, Jacob Keller wrote:
> The ice_get_pfa_module_tlv() function iterates over the TLVs in the
> Preserved Fields Area (PFA) of the NVM. This is used to access data such as
> the Part Board Assembly identifier.
> 
> Some NVMs in the wild have been found with incorrect TLV lengths including
> at least one which reports a TLV length of 0xFFFF. When trying to read the
> PBA from such an NVM, the driver will compute a new offset for the next_tlv
> which is lower, due to overflowing the 16-bit next_tlv variable.
> 
> In the best case, the driver will incorrectly interpret values until it
> finds one which has an offset greater than the PFA area without
> overflowing. In the worst case, the values in the NVM result in an infinite
> loop as the misinterpreted lengths result in checking offsets which are
> valid within the PFA, and which ultimately point in an infinite loop.
> 
> Fix this by using check_add_overflow when calculating the NVM offsets, and
> bailing if we ever overflow. Additionally, use check_add_overflow when
> calculating the initial maximum PFA size.
> 
> This ensures that we bail immediately on encountering any TLV who's length
> would have caused the naive addition to overflow, rather than entering an
> infinite loop or otherwise misinterpreting NVM values.
> 
> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Fixes: e961b679fb0b ("ice: add board identifier info to devlink .info_get")

I'll ensure this gets added to the commit when queuing, as I forgot to
add it when re-writing this commit message.
