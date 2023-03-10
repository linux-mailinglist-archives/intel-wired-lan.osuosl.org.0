Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5762A6B4FB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 19:03:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5DD3416B3;
	Fri, 10 Mar 2023 18:03:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5DD3416B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678471420;
	bh=4aSzj0S6KA5IOJbsMuFOWYJAIiiSsHZIalfIxVTy3PM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NgKQSYih9aZzP1WX2AFTY8ZXRDg3EQi4tDryyC+SeM3u1nA09utvyKU7WO/JVT16W
	 LCMdVTinYKPFC2uDL4buevo5ArLW5Bs6ElDiJfPlKVpIZAClnF4TEZocdDeUXZT5nc
	 AFrdde73e8ALEtOirphCIXmRicxE/s5sq1zlTG1irXdXsmuxY47kzM3YiYDFL7x4RF
	 iZNTvuipcXnT6f0lXSp+A055aBC5zN4ESF90MnaKbGH01JGCfmtUqlbUcaFo1IRIvo
	 EkkFq4bJbArpFTkfKX4F0xMroZg3tA4pTeJU3xZasLteqZkBZX9INh0h9jv/DMP0zm
	 7NREB3hG7Duqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZeDX7I8Vzz3D; Fri, 10 Mar 2023 18:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E818416A1;
	Fri, 10 Mar 2023 18:03:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E818416A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 986DA1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 18:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FD1461ADE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 18:03:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FD1461ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rWwxB5kLZLOw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 18:03:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5352561AD8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5352561AD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 18:03:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="317181218"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="317181218"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 10:03:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="1007206831"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="1007206831"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2023 10:03:29 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 10:03:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 10:03:29 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 10:03:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCKrqo5r1xZXoXvggtD4OAY3ylUpkMZ99w6TBe9VZi68dlHWWDPW5mqchsbkFG4FB3cYITqoSPWSjCwFe/Y6zGWEXJ9tj4LChiHQB51fT1+ejguovn8oZ6DjKPkbKl3dWnTApAyHbGFWZCMofN5FcJ5S30arMefJGCZKyIqU1WyJP+p+6AMhMJPGjDNq93E9eolQ2wQbU4FkfXHADFtYZ2DcoVFeStwyDF+3ulJHy4oMxec1GYVuG08awyOMh9MChBROWV6myB1R6kNjJg92pnKye4ZJq+csuhQ/mwJ8iIAMRuqZ8vF7FCzE6zcI1i5kZDIZ14jHYF+TRpvsEgzZ5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mPSMMCPhmLbAoJPmn0D4KRJOoK6C1Sj2TbzFVfV+Fu0=;
 b=eL3xrYc5+iCtIL1jqZNNp9K3Hzu0IsZLAAOp4a6IX8l18e8OjFZHH+6/f9grmmKlgMPo3jH6qZ8V5RZV0Jt7lmP3M/kQPWSNez3OBtihMoGLOIhftsKVaBVwM0NxvElojumS8BQWxYjG2SRMV4C0ciHF4FvUhvP2r/Xq4SLgby3zKm7dBCcEPutxC0eB7zYzxGbK2gyK8Z5ZyRpa4Hc8r+yyoxRuo/ByNRmejfGxcVelrvND+kzpO9iUODeNZLUEJa7Qczg3aeS4zw8/+BAiGqgmU7yF5OZuYXD4WKLaupDxrO2cd6hD3PTqqXqAySK8Acj50QCQh+TMgRqq0CcSNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS7PR11MB6149.namprd11.prod.outlook.com (2603:10b6:8:9e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 18:03:25 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6156.023; Fri, 10 Mar 2023
 18:03:25 +0000
Message-ID: <5daf59c4-9d93-4466-3ef3-3c9cbabe7d92@intel.com>
Date: Fri, 10 Mar 2023 10:03:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Guo, Junfeng"
 <junfeng.guo@intel.com>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
 <ZAnmxK1U+a57Rlpf@localhost.localdomain>
 <DM6PR11MB37232688E5F2E6C2A1646DBAE7BA9@DM6PR11MB3723.namprd11.prod.outlook.com>
 <ZAsDPCq+YLghK0Hb@localhost.localdomain>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ZAsDPCq+YLghK0Hb@localhost.localdomain>
X-ClientProxiedBy: BYAPR02CA0034.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::47) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS7PR11MB6149:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c44805b-2682-4152-1192-08db2191be5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zu3OkBFVkPj5Jx3RGKfg/8KsUc0gB3CYWrv6iUHjwpkWFRcz2aVAdIwtyNxETQbRU767dksSMrlh+frq5aLuyyHB1H0ys4l1Zm+41QDxi5vIe6r5XVR/BSv+a3F2/J2hHNOUd/gF+5VZiFQQ5yuOx0qoKgUR3vastbiOz/DsRdk3feSHNM6y9u1TWlTY9XGGoOPfdkKRzpQ0bzeTf2/rEjyn+v0fnrW7NrD1GskXxx7BUTum8KWC4JUoZqSavpze7yZZCU22AmBGwNcO9cszQF92NDm9RdsK4jQaOSySQxB/E7k3e5xJFte0Vglq85EJT2on5SWQS84nAQXXeEOdQ8hxBOgpuK1Wlf/PmZvNBMWwhBVLkpMrnZkM9KwCRe/A/ttuYnL3vHePD3InoGfST27ljnrIjl+92RK1AAoApXy3cyWdcwBWmh6EXUjznbUlzDlc1tBXMz3/esANyLgKd0azDGjxxrl2B7J09oWVC6a8xHIPuykkqhKxypqvwh/eeY/IUxhj1MkQLWjbuVH7r7ABX7CZmr6j6n+mXdfdzetJ427NWvAeIrnkCUmBOZTitvN/SPemI5wlTSOZaptW9/4jOCFTxF9VmH2HD98Ym8hkNPxK3xDoDOmftvEc15LDyR+GtAtsfW9gSev75m41lwgomgs5ayDe5xeK8j3TPsxOj+Mg5UwAiH2MifnRqm49iXI0qFrkhS/pYZQ7K0z14FTKHq1r/colUDwfe+zEfZE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(376002)(136003)(346002)(39860400002)(451199018)(31686004)(82960400001)(83380400001)(36756003)(6636002)(110136005)(478600001)(316002)(38100700002)(6512007)(8936002)(6486002)(41300700001)(2616005)(6666004)(6506007)(26005)(186003)(53546011)(5660300002)(66556008)(8676002)(66476007)(66946007)(2906002)(86362001)(4326008)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVlFWEVLclJXZ0oyd0U1RGlTSVFYMzdlUUFvOVZhZkZVUnVELzJxd2kzdFZ5?=
 =?utf-8?B?cTRuM0dpS3M5emgwRTVFdG9JVUZPNzdidGVjaXYxNUJNSUtxOFFsU0l5R05k?=
 =?utf-8?B?QWt6cWRBZ0JvQWMrdUZxMFlrUlhmZGJiTExzTmxXN05DRCtiTHFPdzJEZTJw?=
 =?utf-8?B?SERnMTZwci9xTDNtUm5yRGltaUxyRDg0QUdWU2p2K2I4UVdLNCtsQ25uSisy?=
 =?utf-8?B?a3lNR3AzRTJMeGVWeDkxNkVtT0N1djV5aDNwSzJXZ2pYTWEyQkdzdnc4YzJv?=
 =?utf-8?B?YmdhajdoV1gyN1RKTzVIQmpuRTFKZm9VbU53bmFid0tqWjhVYkZra0FTS0Rz?=
 =?utf-8?B?SGNXWnRhbXoxbXdEM3lzanlPTlczejc2UGxVQzduaXZRNXNYbzBTOFkvT1pG?=
 =?utf-8?B?RzZtakhxL1dEQ0ZFYXFkRFEwRnFxZjdVa0t1U1RWVWxjTFVWTzVPTWlUNGRC?=
 =?utf-8?B?SGNvYmdHeUYrMWlDV3lSYW5Hb1g5VUlUVnF1aFk4MjRwWURZSFdxY2J0UmNP?=
 =?utf-8?B?L0o3eGJtSGxTeTJ6ckFQaFBqSG50SkxwcFZpQ3ZkZkpaN3pvSkRJb24xd20x?=
 =?utf-8?B?SUVMSlk1WUhLSTdxOTdtUnh6d0I2U2Rzc3YxdUZnQU90b0xkcG1JaVRuQk5G?=
 =?utf-8?B?V0EvWENXYzEyays3ZkIrYmhRS3hlWXdWQjJ5UmR2QTVZOW5YVzVWT1k0d3Bw?=
 =?utf-8?B?QzQ3ODVUam1qNVJteUJESG1OR3dScDdUNEdoSWl1VGhUMW1WVHZueHZvbXIx?=
 =?utf-8?B?WU1ZV0RpOWdjNmhIQjFpbWJud08zQ1Axd2FYVDFTbTg1OHdLNmFDeVJOcEd2?=
 =?utf-8?B?QjFsS0dodW53eHNzMHZ1VC9sZC9zZnZoTW9aQ0wzcytMMk9ZRTZBZElSclF0?=
 =?utf-8?B?M2ZEcFZid3R6eUhhZUNZb1QzQ0tjODFwREl3RVQySUl5VE8vdUdGT3B1NVVz?=
 =?utf-8?B?bVhvSk1jTnFOaGtXS25NeVl2N0gyWXMwaWRLUDR6c2RQdlFqenV3V0hJVWJZ?=
 =?utf-8?B?RFpBei9hT2t4S2FxdnI0WlRvWDJzOG1CSVN0MzBNYzRWZEYzNGlJRUo2a2dL?=
 =?utf-8?B?elAxenBUU1UzandYNE5pTU1CQmZFYU15ZnE0ak5HMEVpeFA0OWN3ZnB0QzN0?=
 =?utf-8?B?bEl0ZjVoYU83S2w4K3Nod1hZcDQza0JXL3h2dXNWZktGQmMzTjRmczNZbGZw?=
 =?utf-8?B?eHQrVy9LQ25DTjVkS0NiSHE1S1l3V3g3cXA1UnBjZ1d4VGpzRDZiZHlibVl2?=
 =?utf-8?B?WTdzN1k2dld2cVMzQ20rdjdpaGh0Y2lKQXJ2WE5iSnZNL292ZklISlN6T1pt?=
 =?utf-8?B?ZGtJdzVwMGZIVGFkVVJjZTdGRjJOanM5YjNIN2hJZFh3b2lxRkkzQzYzZkZZ?=
 =?utf-8?B?VmtUcFlxRU03aFM4aHNINzgrSVMwNEFGVkVTT3pyR3doWkVYSlF1ZGVWNEhv?=
 =?utf-8?B?ZXUvVDdoakppQWx0dHlSWFZLOTVMZ20yWldmSkFDMkhqSGFTc0lydGJLRnZK?=
 =?utf-8?B?K1hSNTFpdHZCOFVxMUE1VDJXd2QwOUUvWkxyZ00vcHJyU202SzRzN1AwTTlo?=
 =?utf-8?B?WXZwTUoyUlpPcndZSng2cXNXVERTNTUvMmZ4V3pNRUhKQlFrWFN2NTJGdElq?=
 =?utf-8?B?U3JwSDdCZG05QjZROVpjTE02cCtLRlRMblBDZHcwckxkVEZzNzNTRXV1N25y?=
 =?utf-8?B?Y01tQ2M1b3ZvN05DeFgyUDZBWG43elo3c2daWjFRNi9CTmVxcWxpMGFQL0lU?=
 =?utf-8?B?RWZNTkNSbFc5T3ZWdUtxRlFzdi96MWQ0cHF5dm5TeERORmI5QzRBU3dkOXpi?=
 =?utf-8?B?Qm5QV3BFM04reTh0UzB1bkJTd0F1cDFSZC8vdFJJSmdTekRtZzZIaHVWeXdn?=
 =?utf-8?B?Qml4dVZwTzhzYTk3b2xPM3UrZWQ4TlZzNnF5Sk0xcUIyK1hlZTZsMGh0TW8v?=
 =?utf-8?B?c2VBY1VIZXR0aG9GWXlzckVza21yakgvYVdjTkZQaFJSKys0WCttQSs2Si9R?=
 =?utf-8?B?NXR4ems2MXpaVC9TZXVCUTU5bDRDTnNLSlNjeEViZUZFSmJpOEJmUVdEeHlq?=
 =?utf-8?B?bThLa25VeU5wMFJPbkIzdUQxK2dmVlpZTW1POE5FUDJnTHJEYmVORkMxODds?=
 =?utf-8?B?dkprOGFrRjA0bXcyR0dkUndFdXhpSzJ5ZmZWaEY2SlNtNklyTUdybnUvbnA3?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c44805b-2682-4152-1192-08db2191be5f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 18:03:25.3745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yot3tW45JtXg9ybYZbIOugaidXrf86SEBEFns1m8lKQrwIdePEiytsLREhUuUryz7gNxwL4mXARvGOPhkCJ3v4cveAj30g4S+qSZjaS8gKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6149
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678471410; x=1710007410;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=weq9k2sjXxeFDXowXOEz3DQPbQHF0yAdBLQhcqXlFwk=;
 b=fPuZEdZQ5PsVr0G0I+RPjtP1pUgRrktv9gJ9JAHoNfbRcPEmJgK82qSx
 5g1B8wR1CKRhpR9lijLPxhxCBhlFXU8tbRe5qIPu6LzDiSCOnz6M0CzVR
 5msOWvh+d2/Jrw6Ymjv5zCAYporMjC67EB5hgxRe3zbOKZRxInDcUS+a4
 IydGS0xV3ZBYeEs61tH23x119V38nqITVogm5a7hZ4K0s4kHSHIPpnWoy
 ubuFcTXphmB1Hd0jOHJKPFDeD9U2flpVNNMAvBFF85QuPWo+Nd181KS/E
 spo5dQeRMysXWWXxZsHY/iRqwr18/2grZYTJrK7ciG/SToBTh7f/2li9g
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fPuZEdZQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
 for AVF FDIR
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/10/2023 2:15 AM, Michal Swiatkowski wrote:
> On Fri, Mar 10, 2023 at 05:16:22AM +0000, Guo, Junfeng wrote:

[...]

>>>> +
>>> 	to_fltr_conf_from_desc(desc);
>>>> +		struct ice_fdir_fltr *a = &existing_conf->input;
>>>> +		struct ice_fdir_fltr *b = &conf->input;
>>>> +
>>>> +		enum ice_fltr_ptype flow_type_a = a->flow_type;
>>>> +		enum ice_fltr_ptype flow_type_b = b->flow_type;
>>> I think You should folow RCT variable declaration here, and remove
>>> empty
>>> line.
>>
>> Thanks for the advice!
>>
>> Do you mean update the code order like this?
>> 	{
>>
> To follow RCT:
> struct ice_fdir_fltr *a = &existing_conf->input;
> enum ice_fltr_ptype flow_type_a, flow_type_b;
> struct ice_fdir_fltr *b = &conf->input;
> 
>> 	flow_type_a = a->flow_type;
>> 	flow_type_b = b->flow_type;
>> 	}
>> Or like this?
>> 	{
>> 	enum ice_fltr_ptype flow_type_a, flow_type_b;
>> 	struct ice_fdir_fltr *a, *b;
> This is also fine
> 
> Also fine will be:
> struct ice_fdir_fltr *a = &existing_conf->input;
> enum ice_fltr_ptype flow_type_a = a->flow_type;
> enum ice_fltr_ptype flow_type_b = b->flow_type;
> struct ice_fdir_fltr *b = &conf->input;
> 
> And it's look the best in my opinion, but it is only cosmetic.

Looks like flow type b has a dependency on fltr b so I don't think this 
will work.

Either of the suggestions previously mentioned should work:

	struct ice_fdir_fltr *a = &existing_conf->input;
	enum ice_fltr_ptype flow_type_a, flow_type_b;
	struct ice_fdir_fltr *b = &conf->input;

	flow_type_a = a->flow_type;
	flow_type_b = b->flow_type;
or:

	enum ice_fltr_ptype flow_type_a, flow_type_b;
	struct ice_fdir_fltr *a, *b;

	a = &existing_conf->input;
	b = &conf->input;
	flow_type_a = a->flow_type;
	flow_type_b = b->flow_type;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
