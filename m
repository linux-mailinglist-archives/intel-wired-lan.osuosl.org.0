Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBF779D129
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 14:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEBEA4029A;
	Tue, 12 Sep 2023 12:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEBEA4029A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694522050;
	bh=JC06vpll2Oz+MC6giH7Mb1VmPdHrgKVoeyzlHVMToso=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2xbVVDbiv/1YHEpo07HWNLoNYbEDgajK4NjJYHuNz6cHvhCI7oA2xU79O98G7G2ZD
	 4XqfoBqjUjH9u1UgW2VjUWBftc0V5GYaIDHAkotcH5k1ejmIveelOSTJyowYCjE/aa
	 G12TKH4vLrCn4W+0IcChXinG1DkmWMskxurvFtf+ftJco+ug5R2MAqD9gzonfaBLDo
	 XQ6L/KM0iA5vSfLw99xB5PERPSqjew6OFUevkjoNqoEflxgfEoqZEUx6q3pvLlLsxI
	 6kfoiXdtaXydhcibKKITXN6YoXPbPXE7BEtOyLGT0QxmXIsOuaGgKZrVhiSjY9/DIR
	 6GrFUHTvP3LFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ho3-wU_UUKYu; Tue, 12 Sep 2023 12:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C53B401BE;
	Tue, 12 Sep 2023 12:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C53B401BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2AC561BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01E7860A6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01E7860A6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZRBBzM_xd63 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 12:34:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A54C860804
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:34:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A54C860804
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368618254"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="368618254"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:33:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="917415144"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="917415144"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 05:33:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:33:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 05:33:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 05:33:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbcmxRRUrjqR5yFM/JfpLZ8f06yeT6vOOSOPgpL7o9wiSdeylxOdyVCoaIdA6umSH6ZIEyibaZIA4A+89vmgDNqPQXNCH7boYj53n24PVWaTaCF6i8RyBXEeVnCpossqcfec49XPgWB03fvMNsB32okXzxVVC3erhFeVdOnaEh5xGiQTzx/7o5j/ybfkKb1IxvEUeU8SiNmMjtt1LL6JFCYbwqfDWxL60bW0G9Nih3s3EpNS1C6J1mQIil3IbaTrCAv5ZsajcKHM7ohIxAaPW6Y28cQh1uximU8CToIywBDdixYpWOMke2/zcF+Hsf6mepdfLi7Zm1uEManIlZ2Q4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ilx5bbXpHhxNZzNmr52B2L0M2zqbdrpcewAvD85jCSI=;
 b=Oge8SuozxOfPI1udC4xZLZ8kRuansdAWEWv+VJIv9+rO6T32FtSZtCkNO9iOgIVBVr+GACILJc6ecokiZowsGphPTfIXh2fF7+/14D3nRZzCSKMxM7oaCDWsiC2CThC5n1EKVjNB7jU2m7/TT47QhSobbPhPie7z3MusXaJoUDqZmLjMInmqCrYEppwhMOZx4eYWh5/OUtrqnwAxXaxH9GpzmZU+1cuRSOpLdSTTNsMJwsVRJssJLu3Z37hVgu7Tz8ZnDyu3VKuUB29sRDZGm3wvlQ+aqwO/vEZ9FRTexMb0wl7cab+TZpasC670G/9RSYwSpNRy5vs4b9bySN29jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SN7PR11MB7668.namprd11.prod.outlook.com (2603:10b6:806:341::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Tue, 12 Sep
 2023 12:33:43 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::7ba9:c06a:caa4:5b84]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::7ba9:c06a:caa4:5b84%5]) with mapi id 15.20.6792.019; Tue, 12 Sep 2023
 12:33:43 +0000
Message-ID: <47f92633-4bb0-49d7-9a03-d1ad6cfba464@intel.com>
Date: Tue, 12 Sep 2023 14:33:38 +0200
User-Agent: Mozilla Thunderbird
Content-Language: pl
To: <intel-wired-lan@lists.osuosl.org>
References: <20230912115626.105828-1-mateusz.polchlopek@intel.com>
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20230912115626.105828-1-mateusz.polchlopek@intel.com>
X-ClientProxiedBy: FR4P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::13) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SN7PR11MB7668:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fdf4646-fb02-4eec-225e-08dbb38c807c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pRkgtVG6X/3SW1TBqBFxImoz70DkYf5/l//t/m61ITLPTUhLExd8DaXzTezB0KtwEZ/NtLlaD26+El4fbQWTM61xwkT7xan4FEZHpjw7xvzcEi9Sl2mnk6Gcg1xx665uWGH2MdAXUuu23UHQai/Fk+LUpLgXbH3Ye4IDXhdyBxlqabKFRSE590JJHcRGu6einGyZzFqhLYcYWWQE/tb5Wqx7Tm+Twvzt5h1S/2hvbs+M8CJfzywoAH9fuc/lHLGBBLJbK1QTCc7qAbGSBA1YKV+GtkwNuUDh/WaMfLOcS0VSY8lXFqpidrJ5dJtuZ0fcSgH4wAQWNyLQM1VbvqVFAi+0BtsoJlBVZuOxn64Cq+23apYyB1fodd7/O6CXXg0HU5NWwzSOGf049WftHZ/MN46cw+UMu58K2lx5JRyLg2sA1APx8HoHxei/wjWlTutRdimllSxUMpYdRMXiGUsf/9BvBbIAEsD3Joj6aQZb0pYErCYk4vT4WFsLuViJB6+qlJsANulZUXGjvQnamPN0OAfplY+FHw9SbWB6vgQoUuSi7vCovAMx7Rt2qTHoYpcoytRP28mF3cZ9Uv1a8r+AfVglW6qIIMM7+JLPPFP4Ca6xgYhKYltEqZI58JEIaRVyppE+juMW+SeY4iQxE18KLgUsqkPNIVCeeDzaqMvQa2x53uABme9I+2XvyBeLJsTq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(376002)(346002)(39860400002)(186009)(1800799009)(451199024)(6506007)(6486002)(36916002)(6512007)(53546011)(6666004)(83380400001)(82960400001)(86362001)(38100700002)(31696002)(36756003)(2616005)(107886003)(26005)(44832011)(66556008)(54906003)(66476007)(6916009)(316002)(41300700001)(66946007)(2906002)(4326008)(8676002)(31686004)(8936002)(5660300002)(966005)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THNEcHM4WXJqVGc3WUNGOGthaThEQmJSdjFKZXlTaWhOdnhOdTRuaWxlV0d6?=
 =?utf-8?B?aVIyWDR2QjRUM24zc0VMa0hxazVSUDR5dmhHaEpvbzhPOWh2MmJyeWFBR3c3?=
 =?utf-8?B?ZFlXT0hGWmR0b3RKT3pwb0JRMExnMTFIcmpYTk01N1h6L2s5MEJlUEI0Ny9l?=
 =?utf-8?B?UUphZWRsd0liOUNUZFk0a05ranNkcGg2MzlHdkF5bTA2cEo2bVNQTitoVTlF?=
 =?utf-8?B?eDV2R2pHSnczdnpFc3VDc1FTWHMxMGFpYW1pQndhNmNGd0xxbVJZdlJqcFpB?=
 =?utf-8?B?Z3hSREdlT2tkMTdPZFQzc25HTk1weXd2d2dkd1FQaDd2a3prcTNkbXYxUmkw?=
 =?utf-8?B?c0FIUkdOSUEyTG0waWRUM2ZjV1lqQ0FUaW5KRHFPN2pnRUdYeTJGRzJHRHhC?=
 =?utf-8?B?VXMveG9Td0craElhQ0dLQUtFSG52Ym5zSzRIclNtbmJxbndBcit4ZDRRRFJw?=
 =?utf-8?B?d2FDcGNoV0Q0cHhHaGF2eHhJMEU4TlhMOGxkNkFOTW5RNC8wS1hJdTdFc1NG?=
 =?utf-8?B?dHJyaDZBYjRkZ095eEk0T0hpcC9TdjJpeWJHZGxRUVRienRRSXRHTmtxbHFZ?=
 =?utf-8?B?akZOUnA0ZzRUZFJ0dCtkN2grbTVmZ0VQYkhvM1BIeU95RHB0eU9Nb0haNVRN?=
 =?utf-8?B?YkNzbFNiMVlIOTNkV1c2VEYrTUg0bU4ybTFOTEU1N0dzSzcvNDg0SEdsNEZU?=
 =?utf-8?B?UkF3OXRvRG1ORXIzdlEyN29QZ0V4Ti9HbElCOGlpV3p2VDNxOWt0dWNkd0Y1?=
 =?utf-8?B?L2EzNXZOUzJVUWtmOE1hR0Z6anhHSWxUSTZTSm9oN0NmT05oU05kbmdlS210?=
 =?utf-8?B?K0ttcGNhdHI0bGc3V0d6R1oremRZZGd0SHNxZEo2dzNrMEhFekdZazJKaUNr?=
 =?utf-8?B?d2NDWlVmdmFEakZQVjhLQjVYaTExZ05uaE5sQjdDK21WQlUxSU12SkdiaTV0?=
 =?utf-8?B?R1NycUdzN0tDYXE5dGZ4amJvSGlyU096WGNRM0xya2tIZFBhUURZd2d0ZHpo?=
 =?utf-8?B?YWg1OGhTV213R252cHBZQVBEQldVZlB6L3locWplSm1Hem9LdGpXOFBTcFNE?=
 =?utf-8?B?RjRxcjM1Sm5WSUZ1NUVzWTIxVmlOSXRYeUdGZjlkWFJwUmZrTU9zeEtZTTQ3?=
 =?utf-8?B?aWx6Yi8xNnFUeTNqc0NRQmtZNk1TM25GL2M3NUF2b2pJSDF4eGRsRDh2UEFB?=
 =?utf-8?B?QWxRY2xXM21yN3I4U25ZRGVvVjVWVDNObW1XOEw5c1dJU0lDb0NnSGszVG9u?=
 =?utf-8?B?cExYNDEvcGNIVlcrOXd5RXp4bFRwNWZ4dFAxaVhaeEViUUs5NHFGb0hGdDlC?=
 =?utf-8?B?Ung1R2d0d1RwK1lkeE01RFMxOXUvVFZRNFd3SVBNN0dTaWxrSHd1cXRELzJl?=
 =?utf-8?B?OXFtMTlBNGtuNkRBNHZmejNXaTQrWStPWWZDSTZvKytVNUFjNXlzWElMQXBj?=
 =?utf-8?B?RzhtL3dSWkRTWkRXaVVidGRQeTRlcG5TTFdJWFYrZEkxRVp0V1NDUVBmdTdG?=
 =?utf-8?B?UHE3NG1iNHc1UXFkUnRTZmhhUWcwZTFvZGxOY1UrdkdkbStMak9tTTJNdUwx?=
 =?utf-8?B?emZRMUx0K3VIWmw3V1JLTEhNWE8xMUhYZzI5RXJRMUxZL0FUcVhYVXA0Q1N0?=
 =?utf-8?B?elhpVEx3b3ZFZkxRcVE4YkRFM3FiRUVhZyszSnRNQnI3aG5Ed0RkZm1ubDZk?=
 =?utf-8?B?N1F0TzZ0NUtPeEZESFJwYTN6Rk15a1g0VzBUZk9TcUM5akdlUHVBaEp5V0VY?=
 =?utf-8?B?QmQxZE9JSXdCWm5PY3RQMS9PdW9vSTUxL1MyalRtT0IwNFNISG53VW11TFhU?=
 =?utf-8?B?YWo4RUFaaVUzcFZzYmo3RVRrU2RRV21QSEVVeTkzYjZVd0J1akpIMitPL2Vj?=
 =?utf-8?B?ZkM2blpBTGJUM2dZU2thZHRyZWJaMS83RHhoZGZMMDgxS3FraFY2WUd5Yndp?=
 =?utf-8?B?WkJBZStYNzBEODZiSGk2a21WMmxVM3IyNnhnblluZFk5YkdqUUNRcjdaQ3BJ?=
 =?utf-8?B?N3FrNVU1RGhEZDh1eTBBclFJK3BCVXNrand4WUpwSGlEenJqQ2Z5alEyRXNz?=
 =?utf-8?B?dU1qTDE4Q2NoRUEyR1dSWDY4YWFVNXRtR0dOMHhEZkxUZy9wZ1pBZlRWenhw?=
 =?utf-8?B?QjZydklITmdDY1k4OXN5aVQ2MHFCb2RUdVcyT1g4YjVhUE1pYW1VTGFjOXBJ?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fdf4646-fb02-4eec-225e-08dbb38c807c
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 12:33:43.7126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u+qARcA3T+zKeOn8JpJDvxxJjCSyO4hiGBp7LaxxHVjRMFi1KdPhh1HjCbzrrDcWlkRmyed6aLoeyWRVSkjnYsajKzJjSGgYJdzCLyw3nd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7668
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694522042; x=1726058042;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=hOVZ1j/id+BSKMvh2K2H71jWpBvIdZkPEY2h6ZKI26M=;
 b=fRrtq/9/98Nl40V33cELh165Iy8L30eZRRSUeWzClI4Y7xGbptZr4RC8
 1dOyqiacC2USbHk6/6b8v73hGX7+XgK3/o1UcUsjtcpK77QaKRu/YZGH+
 mxbpMDg8PzQWRMAGD6PdwknppKYNpOkwXtXnWd8RsUZNXw8NEqgT2LWeF
 ng10cR5HfuBXdUIgkAC1w8qn/PShHHOy7bhj/5Ryx0rp67Hi4QMrZDCaC
 p8d0XBYxpvUm7dzvyCOiHn01CojmbQud+pTWfzn52oOLzFjfidlwE/32C
 V8Mjp4LUaF0JgwMn8dqN5fUhjwPz6GNGDACOOZjwEvajnvxf0wNYkyDL3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fRrtq/9/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-next v2] ice: store VF's
 pci_dev ptr in ice_vf
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 leon@kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/12/2023 1:56 PM, Mateusz Polchlopek wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Extend struct ice_vf by vfdev.
> Calculation of vfdev falls more nicely into ice_create_vf_entries().
> 
> Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

I forgot to attach changelog, sorry:

v2: balance vfdev refcount

v2: 
https://lore.kernel.org/netdev/20230912115626.105828-1-mateusz.polchlopek@intel.com/
v1: 
https://lore.kernel.org/netdev/20230816085454.235440-1-przemyslaw.kitszel@intel.com/

> ---
>   drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
>   drivers/net/ethernet/intel/ice/ice_sriov.c  | 50 +++++++++++----------
>   drivers/net/ethernet/intel/ice/ice_sriov.h  |  4 +-
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c |  2 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
>   5 files changed, 32 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a5997008bb98..38adffbe0edf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5561,7 +5561,7 @@ static void ice_pci_err_resume(struct pci_dev *pdev)
>   		return;
>   	}
>   
> -	ice_restore_all_vfs_msi_state(pdev);
> +	ice_restore_all_vfs_msi_state(pf);
>   
>   	ice_do_reset(pf, ICE_RESET_PFR);
>   	ice_service_task_restart(pf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 31314e7540f8..4ae59c59e22b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -789,14 +789,19 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
>    */
>   static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
>   {
> +	struct pci_dev *pdev = pf->pdev;
>   	struct ice_vfs *vfs = &pf->vfs;
> +	struct pci_dev *vfdev = NULL;
>   	struct ice_vf *vf;
> -	u16 vf_id;
> -	int err;
> +	u16 vf_pdev_id;
> +	int err, pos;
>   
>   	lockdep_assert_held(&vfs->table_lock);
>   
> -	for (vf_id = 0; vf_id < num_vfs; vf_id++) {
> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> +	pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_pdev_id);
> +
> +	for (u16 vf_id = 0; vf_id < num_vfs; vf_id++) {
>   		vf = kzalloc(sizeof(*vf), GFP_KERNEL);
>   		if (!vf) {
>   			err = -ENOMEM;
> @@ -812,11 +817,23 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
>   
>   		ice_initialize_vf_entry(vf);
>   
> +		do {
> +			vfdev = pci_get_device(pdev->vendor, vf_pdev_id, vfdev);
> +		} while (vfdev && vfdev->physfn != pdev);
> +		vf->vfdev = vfdev;
>   		vf->vf_sw_id = pf->first_sw;
>   
> +		pci_dev_get(vfdev);
> +
>   		hash_add_rcu(vfs->table, &vf->entry, vf_id);
>   	}
>   
> +	/* Decrement of refcount done by pci_get_device() inside the loop does
> +	 * not touch the last iteration's vfdev, so it has to be done manually
> +	 * to balance pci_dev_get() added within the loop.
> +	 */
> +	pci_dev_put(vfdev);
> +
>   	return 0;
>   
>   err_free_entries:
> @@ -1709,31 +1726,16 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
>   
>   /**
>    * ice_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
> - * @pdev: pointer to a pci_dev structure
> + * @pf: pointer to the PF structure
>    *
>    * Called when recovering from a PF FLR to restore interrupt capability to
>    * the VFs.
>    */
> -void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
> +void ice_restore_all_vfs_msi_state(struct ice_pf *pf)
>   {
> -	u16 vf_id;
> -	int pos;
> -
> -	if (!pci_num_vf(pdev))
> -		return;
> +	struct ice_vf *vf;
> +	u32 bkt;
>   
> -	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> -	if (pos) {
> -		struct pci_dev *vfdev;
> -
> -		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID,
> -				     &vf_id);
> -		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
> -		while (vfdev) {
> -			if (vfdev->is_virtfn && vfdev->physfn == pdev)
> -				pci_restore_msi_state(vfdev);
> -			vfdev = pci_get_device(pdev->vendor, vf_id,
> -					       vfdev);
> -		}
> -	}
> +	ice_for_each_vf(pf, bkt, vf)
> +		pci_restore_msi_state(vf->vfdev);
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 346cb2666f3a..06829443d540 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> @@ -33,7 +33,7 @@ int
>   ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
>   
>   void ice_free_vfs(struct ice_pf *pf);
> -void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
> +void ice_restore_all_vfs_msi_state(struct ice_pf *pf);
>   
>   int
>   ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
> @@ -67,7 +67,7 @@ static inline
>   void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
>   static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
>   static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
> -static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
> +static inline void ice_restore_all_vfs_msi_state(struct ice_pf *pf) { }
>   
>   static inline int
>   ice_sriov_configure(struct pci_dev __always_unused *pdev,
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 24e4f4d897b6..aca1f2ea5034 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -56,6 +56,8 @@ static void ice_release_vf(struct kref *ref)
>   {
>   	struct ice_vf *vf = container_of(ref, struct ice_vf, refcnt);
>   
> +	pci_dev_put(vf->vfdev);
> +
>   	vf->vf_ops->free(vf);
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 31a082e8a827..628396aa4a04 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -82,7 +82,7 @@ struct ice_vf {
>   	struct rcu_head rcu;
>   	struct kref refcnt;
>   	struct ice_pf *pf;
> -
> +	struct pci_dev *vfdev;
>   	/* Used during virtchnl message handling and NDO ops against the VF
>   	 * that will trigger a VFR
>   	 */

-- 
BR
Mateusz
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
