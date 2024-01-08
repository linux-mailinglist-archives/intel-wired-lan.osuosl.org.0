Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA8582732B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 16:31:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ACC440A9A;
	Mon,  8 Jan 2024 15:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4ACC440A9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704727860;
	bh=W9jy3QynsHxY3IwGRS0jjnB1E5nt+PpUwoy6ZoQTbr4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GsJtZxhJuCPpf6rQoyNvdVmOyiXA1x/n+w8og7vUthxot0Owz0ikDKSxDAfhFsbkW
	 wrdzcn7sMYCNfFiVXXl3HFGL1XE7x0uG1KuesTOn3n7zJwQGRVG7YkWdKWAwv/sVSx
	 dVnTCct5oK+Y+0CwTZ0eMceawJDCljWf2frcpPLdr2ttbJlF58nUaQbJlv8fSrWwwk
	 ef0HyvdGiczuqGgzUPAit+k2ZkhJUsEg3u03FT/fjhtt+gP4gBB1UVdpjeroL0wys3
	 y5oN1v6k7shTelBxH8OmgYe6rrX+mDxCYT5VW5pV4OLcnJgGn/QmQydFy/9Z7uSHPo
	 9O4BeXzFLeJAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJkqDqdanuFQ; Mon,  8 Jan 2024 15:30:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B031405C4;
	Mon,  8 Jan 2024 15:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B031405C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 791E91BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 15:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DE2660FF3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 15:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DE2660FF3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VaanMiY3KlPs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 15:30:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B8D460FEE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 15:30:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B8D460FEE
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="4673403"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; 
   d="scan'208";a="4673403"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 07:30:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="851838420"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; d="scan'208";a="851838420"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 07:30:38 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 07:30:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 07:30:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 07:30:37 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 07:30:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWS5lec6JOvSLnzRC5f8PR/nmURjU+z6MM19q60Xiu8CGGcKzPhIeECwBVhlCi0tAEEII61zgIj621OGqsQLrMPH0jOEwdPSRO1l1gIo9eZXvZRZdc+UX9BTXgH7nEviQlS81Ehg/1XQWwnuo186EfzcupMFQutqgJRbxLFBspXSwJRZ0WtsKRyU/srubJFNhoVfOpUAxFkbXjWEbkHfbeh51RYQSH31EKANxnJLe/SZf2BisKZcAsgjHmIhfHIxn+1zeswj07CEjyqxBWS3hvwjMOeGzm/dW4nI3nTQg5QHftNtrRfUJDNAfdYqKmk0V0j6OM7gEsJOsDNOwXi/hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9jy3QynsHxY3IwGRS0jjnB1E5nt+PpUwoy6ZoQTbr4=;
 b=bh5AJz8U94lubVEoEprLp90z4/ocGTqLzeslVk+8cDyCW5HwPAvVNs9ct7X6oClSLAY08q/SWaP2iQ/2JErX3voLMkDiWjX97aAaM3FsTqZwdTXnfcAWhVRXievZEhaf+VzR93f4ATYSDOvSod7Ii/ZB1bYPG/sz7EANkWvKGMS36I0GQoGwCz20zuaZT/AsqsjccXQvounDCCQ+ntNvHdjPWNWJf7eowEEKKJ3kDCRxZV3K8bMzqKcMTpPMvBPIYlQL3n05+75wLGkp+AALEDzjyVfNeqLIz262L3NXUjvnF6HYCD0FPXQ6I3rSrGxwdEuxoTb8vKqzzVPTgs1RWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH8PR11MB6855.namprd11.prod.outlook.com (2603:10b6:510:22c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 15:30:31 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 15:30:31 +0000
Message-ID: <a55923ae-61be-4792-8717-a6e134fc3585@intel.com>
Date: Mon, 8 Jan 2024 16:30:27 +0100
User-Agent: Mozilla Thunderbird
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
References: <20240105013232.44996-1-pavan.kumar.linga@intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20240105013232.44996-1-pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0078.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH8PR11MB6855:EE_
X-MS-Office365-Filtering-Correlation-Id: bf7380f8-0a82-400b-043e-08dc105ebffe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qa24yOFAG3O03UO4wgtEYFUqvwZLjEhQoU0fCYAgzG5MKhsTGrv7xH+pgujMDU02u+IlBU8NCJ95Yq56iLnn61IwPZlBVrqEHHEOBqiA+nMS3GHIfLR9XPaiXymZgMFx6YO6iJqhg876XrHNh/QAQK5A5tjofyZAKuNMnfRhImx/pVKkWcJEFyS8LAUiTpY8AXfadT5qSbLHEi90umc4wE3Iz53E960LzVSmRRPSW2pOnWDF6HmW2W8X8i3jiZZ3EIZ3R6qFOWWtja4OVjWRAWctDAitY1wzKbDdsMgVgu0cwim5S5CKKa81cjBHTf1txiAPJHa/KmetsqrOWCL353pxpY5HjQ+V30sxl5gITOveqZ3h+zvbxiS1iO9xiHQ1W11Opm1EaaEyHEtjZpSa0yFAQnCnZJ151ZkaKyrEKZXdAk3mG7N3hf0OGOLEYsotJLw88vUBkMXXVFp8AReNcsdPDylCrkxFkAaMK8EzHv3edyXZvg6hW/t22qblb4g/KWwXKR7jPUhS8pvV/IOY91zqZ6NRkNvv+tT+KoYTzv8rJWfbYhsPeRuZzoWoGs+snEzgIZLV9U0hMlT+LVMS1rYgvjj2p3reuW2hmYI4Jk27j72E5Sh4EGLJEpKLNn6bWM8hIL1k0306uT1VZqKohQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(396003)(346002)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(66556008)(41300700001)(8676002)(8936002)(6862004)(4326008)(82960400001)(316002)(36756003)(37006003)(66946007)(6636002)(66476007)(2906002)(5660300002)(86362001)(31696002)(107886003)(26005)(2616005)(83380400001)(38100700002)(478600001)(6486002)(6512007)(6666004)(6506007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXY2WmpzMndpRGZESmxJUEJLTzFtM1lVTHNxRDlqR1JOZ2xYZzViSExzSWJw?=
 =?utf-8?B?ajZIeDlZcnlOMktxc2oyUjdteTFBWDFHSlhiUlBrQ1l4N0x0RHpiWWxPK3Fz?=
 =?utf-8?B?K2o2Z1EwTEhkWUF6aWJ4NFpKVlc5b2FYT2lta2FaVEZJcnRIbkphVnlpdFZo?=
 =?utf-8?B?RldLeTEvWXU4VC90N3hSUVJLUk9UTmtmdk9SYS9ReHpLNTZoTVZES3g3SWhJ?=
 =?utf-8?B?cDljZ3NuZjBQUWdPdDlKT2J5UHhZdE1lUmNyWSt3YWdCbjc4Z0Z3ZjJ4cmV0?=
 =?utf-8?B?WjJVZnFLYWFZNFJlUUF1VWdwK2NwTTVrZUxabStuMmR2SWcya1VBblNKZURi?=
 =?utf-8?B?SGZjL0drZEVZbDRldC9rVkxJZUFKRlU5NlJRUHVHNmEvOGpOK3AzS3ZHYjdj?=
 =?utf-8?B?MkVhNmFzVS9FeE44MmYyWVh2VVVnK0JreEFFN042MUpGbnBKQjNIVGNVejcv?=
 =?utf-8?B?YTVjV2dnRUNQbVJWd0t5ZmcvZlR6ckxaVzZLS0wzdjdSbUtzY1hHY1ZTKy8x?=
 =?utf-8?B?cGNGV0Q0YW04eWRXR1V2THJsdTlJTVpLN2NhRWRTMWd2dTFMWHphMjMzQms0?=
 =?utf-8?B?Vk5nYXUxU3JkbnpjT1hlNTFZa2VRMjVIdXR2eERsVG91RE5lbjhXLzQ0RS9L?=
 =?utf-8?B?TkJYbGVyLzNlQmlQdlUwVHBwRWpKeDc0c1VyYTF0NFEyYmpEVTZnWE1LTWpN?=
 =?utf-8?B?N2gyREwxQ0R1cmVGU1RObkUvM0V2cFVvZUlSd1N5SXJFN3M3UlRNZk1LZkRw?=
 =?utf-8?B?SGtiQUljM3NEUU9McEtaMHlnK085OGtLVjdZWnEySlo1b0xsVUl5OEVYRHRX?=
 =?utf-8?B?OENKcWFJZ1p4c0d3MkVIcTVnSVV2ZElZUlZuK3RoOElaZHdEdFhIL2hVZ0Vv?=
 =?utf-8?B?WlJnR3d3V0J4cWFOMnN2bnBiZEQ0U3F0ME40dzM0OGRpTkZlMDJndEhsdTlo?=
 =?utf-8?B?cmF3WnBIakhIR21RU3FndEN2aGhHeDhtaVZScmJxMEcyY0pxMTlXZVJDbXQ5?=
 =?utf-8?B?aUJRcXlrRXkxREFyN29Qd05wNFVlS3kwbHRtdU44V0RYYkxIQnFjZEt2R1Qy?=
 =?utf-8?B?cmlSYk5US09mVHk2elRQbkN4andPVUFhOUxEM3owWlQ3NW1qd2MzR3BsY1FS?=
 =?utf-8?B?UEo5bW55cGpnWldtUVEzQTF0a1c4ZjdGcjA0MU4xaEdTbExuaXYwSk1wZ3hk?=
 =?utf-8?B?TmdHYVZEMk5DSDlSNW9rTW5sRk00cFpDS0xtTkZIUDFHa2hZaG40WnliWXp2?=
 =?utf-8?B?R25FUGc0MXlKdGQrQVAySnF3RHI3K3lLTGdpR3BQU1hiUTEzYlVmSXlpT0Jo?=
 =?utf-8?B?UWVQRnVYc0creTFacW14ZHpKSHppcVhFU0VkUVNUOWVpalYrSnduaVgxSEZ4?=
 =?utf-8?B?VWcrZ2xXODNQalBYM0R5Q3RZWXhlaURHTHY4Q3BGVGRqNlRRVXJmMnBhY24r?=
 =?utf-8?B?NmFvNmJ6dUtPaWdBVHYyMk50SksrZ3hzYmdDeXlSUDJGamNJUmpOQXFHQ1R1?=
 =?utf-8?B?YmVyZE1yQWdacllhc09LeWJnZ1VnNDQ4QzhhYk9EcWVEQ2dhUHRUMU9lb1pM?=
 =?utf-8?B?cEVSVmxuUmZyUktGVE5RUU1rRDMyVFp0bU5yM1UyQ0VzK094UWNmTlQva3JR?=
 =?utf-8?B?ZGhNU0F0ZEM4NmxCbk8rbzEzUXJZRERjNzJ1V1VlVFFBZEh5aXB3bURBa25O?=
 =?utf-8?B?M1Q2WGxJYnlaZUNYWW1PVzBOeE8xaWFzZld4U3JDTXJzajFXeWFFUHdpWVFJ?=
 =?utf-8?B?RjFjVUJJZGYxMVZHN0cyTWN3TEFQa0VCK2NPa3JuVUpTZWgvdUQ3YlhUUXNm?=
 =?utf-8?B?djRLNGVMVWxLOVgyYzVrUENvS1haRmtEb1BsUEZIbXozWVdORE9VcEhnbXR3?=
 =?utf-8?B?WkplbS9kVE5yYzgvRlljRHNIMUxqcnFjMEp3TytHdXh0TWh2V25UeGNtaU5O?=
 =?utf-8?B?a2FOb2VSMlh2VlFrMGFNcDV2M3E0eVUyUDFUMXN2bkNiVm93QnU1cjJCdWxK?=
 =?utf-8?B?QkFnNU1Za2pxN21NY3VubXZKQjY0Mk04V2swa0dmWnpsZFN1U3FtTm12ekxS?=
 =?utf-8?B?SzhZM04zWkJmSkNPVndxZVRPb0s3RDk2VkEzVHNpSWVnOGNYT3BiS1lMVFQx?=
 =?utf-8?B?VkZLWnJvVXFOUEFJazBBNXdacnZUSWlQcjdSQWlRZ1VhVk01aDJWUU5jSFpp?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf7380f8-0a82-400b-043e-08dc105ebffe
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 15:30:31.6824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QpKCyTaePL1CCFoX+ox95QGp4RNE9fRVCSVj++DpmUtO452GytS3L4nikIdZsyBWsnG175z1+k2b6zlu3uGCTBVvhihBe/GP1Jzfbb+MCy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6855
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704727849; x=1736263849;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I34Cyuv53A1qxRmS2Yhf+vGUbeB+IgMq0ub+P0uVB6g=;
 b=iNDYjj5HT5Otu/6szxQWk0h37FarAHSXcV9+hYa20OVAnlkLC+gXr/cH
 eAE3sj/4N3N9qJkQg1ChY0L6fMLO8RhvfcK7Fe/Z8afxfm6aS3r47hVFx
 PpzDEffiumyFrL1TdQs5qkW+QzuwINlkPDuwtvETHpVCiZ+7Ap3WSHhzs
 3wjTRBc+Bott9x7ci2N2K8QBFTeZI+tm/n0ZFROaetUePxYWTBdlFM5D/
 e4XR6URqBaCU1BgNnpUj+1zBT/uyivtN3MW03ZyF900DqCM06SbHJ/rzo
 tvpNiedTg6AkavXwok8j66WCz5E++ro83HTDGNErB7pTOxp8kTVu4G8m5
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iNDYjj5H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: avoid compiler
 padding in virtchnl2_ptype struct
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
Cc: emil.s.tantilov@intel.com, pmenzel@molgen.mpg.de,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Thu,  4 Jan 2024 17:32:32 -0800

> In the arm random config file, kconfig option 'CONFIG_AEABI' is
> disabled which results in adding the compiler flag '-mabi=apcs-gnu'.
> This causes the compiler to add padding in virtchnl2_ptype
> structure to align it to 8 bytes, resulting in the following
> size check failure:

[...]

> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> index 8dc83788972..dd750e6dcd0 100644
> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> @@ -978,7 +978,7 @@ struct virtchnl2_ptype {
>  	u8 proto_id_count;
>  	__le16 pad;
>  	__le16 proto_id[];
> -};
> +} __packed;

Try using `__packed __aligned(sizeof(__le16))`
(or just `__packed __aligned(2)`) here. It may generate more optimized
code than just __packed, as the latter assumes the structure address in
the memory can be `2n + 1`, while it fact it's aligned to 2 bytes.

(another virtchnl2 design fail anyway :D)

>  VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
>  
>  /**

Thanks,
Olek
