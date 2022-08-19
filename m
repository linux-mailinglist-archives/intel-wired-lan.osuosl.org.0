Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D01659A7C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 23:38:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E24A80B32;
	Fri, 19 Aug 2022 21:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E24A80B32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660945112;
	bh=e+INxKCu9XFFhmnweAWdz4tPdlp8gFRqfNWIHSRGG38=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6VKhVvnfesf4uPSrgdmtcSMEwCTIBgGC4l4d/ime3Du0a6kJDrJgp35ED6gfYCTqv
	 QxmZbekwL/ztLlAUnEDZq4hNyehOUMdr2IxPke3R4gxfF3AATEopgyopCLPdU2+bGB
	 zuiKQHjr/j8ls/WS1RLcEzvh/oHXSyN/35TQCPdTEKTkofMbJZIruOndfx7htY7Bl+
	 b+zZ+ovG+SEaaQP48UoXPB5A0yeQlZ7vqPhgv/MIGR6n3uV9WUlD7dMI5EX5Ej0rAS
	 dRlnXFsllAGEiKVQpZbVnhiGY9CLYck3foa+TWWx0T5GpoBzHcL4PnAJnA6gN4h7Jl
	 HgVwe4YxQQZvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4bqQ4x4DdVQN; Fri, 19 Aug 2022 21:38:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FD8283E54;
	Fri, 19 Aug 2022 21:38:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FD8283E54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9B371BF390
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 21:38:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFF1160B9A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 21:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFF1160B9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJ9l-TdnIxlQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 21:38:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 558D660681
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 558D660681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 21:38:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="280071954"
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="280071954"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 14:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="559080692"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2022 14:38:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 14:38:24 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 14:38:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 14:38:23 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 14:38:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FVJbD08+FGvCZFOxNLUnh+P1bi6emp/7uq4CW+nM1ZpCqH4luq9/va1u37hjCLMb6/nTHRjHnHOiXw9SeqEuj4Wk2TEXCxnoofHbDbxM0+d5DCwACI/gEV16w1ZodPmj0Q2hNJABQrhNSlOoHVr4ehw74B/Otcn6iktKgrH7hBDTghFHVzo3oEO2y4zNmlS0j7/8A+L8lLP2RA2bsIk+Kh5aWUb+TpSY2h30gl8XdSEb/vwGs+T9I9mpmc9tT5KqI+j/Xmxr//bUQ0BdTgiSkbfO1UUfXHuxyuy1rrU4juNCUqwZDX/BrATiGKrdoT2TPOClOfOcW98z3ERqbQqCxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2lKFo/9esj9iyNQnq7cwKQavyjKtGK14frfH3sciL9Q=;
 b=WkV7JoXSLoQBw39tnA/P2hig+VKc3GNyeR+XbJO+K2zU2AnHUzs1GWA2qg+KDQKgfXJkP8hoeFXIbPSKwWH0XH89qCwgw7vG96Y/vhCGMw93986A2ySgLZ36vQTxEGg577actt+AlFEkrLxuA1TRddc3AV+x0vETOI2avc0xxi/eWYCRhQD+yJu0Nh70VxAGJnSUTM379LIBLUnbaIhIL3z+F/eou5g2ExnF1dL4Tg1Asb7a2Rs/1rH097mS5lpsF3cYKXriYG/5Pdba1b1i2siM6yEITAESmVW4WT6XkBqZwA0rphOF1WIBlUBKTdH7GUZgs4LXoUOWjAFlBXLABg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN6PR11MB1858.namprd11.prod.outlook.com (2603:10b6:404:100::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Fri, 19 Aug
 2022 21:38:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5546.016; Fri, 19 Aug 2022
 21:38:20 +0000
Message-ID: <f3ef82cc-e372-443a-7f3b-8fd854332763@intel.com>
Date: Fri, 19 Aug 2022 14:38:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
References: <20220811114552.1577550-1-mateusz.palczewski@intel.com>
 <99098383-28c1-9999-54f2-9cb12cf06373@intel.com>
 <PH7PR11MB5768669AC890675FE5E87034E66C9@PH7PR11MB5768.namprd11.prod.outlook.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <PH7PR11MB5768669AC890675FE5E87034E66C9@PH7PR11MB5768.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0181.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::6) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6a50156f-d414-4434-5d7c-08da822b2237
X-MS-TrafficTypeDiagnostic: BN6PR11MB1858:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DLpQRas0c4lHcbTRgemGc0JJVUh9ntQgt+QaXIEzNEW1d8Gp1H6+fGAMqm2fuuHiBE65qOKkLS8dl/iVOcR+KnMNfk0uziZ9RTey1WBHUiUaDEHgIFg7iMTH0ofiyCfAwfL1/u3cU6BCbIpjTgm3pgCOOVMPxuIhKoqh+HHcizQeSWVK4H3NMKBZgMBUAn1yX7bIohzq4nWN2t3nq48rSp7Exp8FHVZH0HSxUaCsicc+wbgvFjvvyudQY3/1oksNumTB22QxejUG52Qe7anDy9ZfpJbxMSMmdklj4AIYvKCusDAVwywhCtbsBANtwkjSadgO2hAvReltf9n3xWR+YrdQfc5k+5uFCtBPKo9q4btDYzmQOVOCL1PKp3mFXHmMuIlA4JMxpyTHjdDXMipJDjkYU7YtUVmSRwiXneOkfdH1TjSFJSb5wtmsP/BXj3JL3sqEvGDZMsQiVCRA8X9r6cSYoyRt5PybU6jTG2qYPGFcqOpNSYaD2IWvkImjAZWoAQMcAYImf3V0JneBw0HVB7jDgsHYuDBaveYe6ktFw6dHQdY8rJlqX/9G2X2NvEsi4mee6RBUeWoK2AdSVlW+tBUP4r9OkxjvNW4+oqu7oErm93H3R29yw7OQoyf7fdiGE7w3I5ewLD9QvfTzu0ymw3nV3vXGzNg7RvXC2cqccvV6GSJNV6G3j0xqAX8cAdTYesRCvgupdqa2C1+7Ja1aykb1hLLocNQn6aqhpXbAYjBUYiPqUi4t4xS3ylZEE6XJyN5sDvi1XSmp5SHySMEFx5ZYZibpItnBmT3VkXKgPos=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(366004)(39860400002)(376002)(136003)(66556008)(41300700001)(66946007)(8676002)(66476007)(6512007)(8936002)(6506007)(2906002)(6666004)(15650500001)(26005)(53546011)(186003)(6486002)(2616005)(86362001)(478600001)(83380400001)(31696002)(5660300002)(38100700002)(31686004)(82960400001)(36756003)(316002)(6636002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEJUL2laa3d2akU0NGNITXF2RGlpNUdMTWRiZTZuOE82MDZqYi83MEdscE9X?=
 =?utf-8?B?eEJ2WU5zUkZ6NHFRcGFoL1NNS01oUCtydVFSYWROK0RJcG9pOEFTb29salV0?=
 =?utf-8?B?aGZVTlRPVTVtL21uZnJxZDJTY3ZoRlJFcVhQeERwNWg4dEplQmJkNEhJMFFK?=
 =?utf-8?B?K25VUWRuL3FQaVk0aE9pcVFaZDIyNHlpUHdKbWJMbnVzbThqU01VLzlPQzBS?=
 =?utf-8?B?SElyZExVcWdVQld2cWs1YkJ4Y1ZmZCtaN2REUGU0M2g3OS96Nm1CY1FicGVH?=
 =?utf-8?B?UzR3N2J5bnlHbnlIeE5HcFBNYUMzbFhxVjdOWXRMZXZFd2pwYWpiZjcvcHpE?=
 =?utf-8?B?REtFQVY5aGM3ZnY1dThQcUZ5c3lHSk1ySnUyang0Sy8xelZKOUo2TGtpai8v?=
 =?utf-8?B?Qm1ucnlHRGs4dVd4L2NQZ21DZWNxZlVmZ0RYcHRMZGZYekxpSm5xVkRQTjg2?=
 =?utf-8?B?ZzljcjNXZkFlOEIwci8xRTJVWnkxYVIzODlzNjdTbWZPalhFcHp4RkNweDlE?=
 =?utf-8?B?TklibEo0anYrZmRYcXdFZmFQWm1RMmIxWTFwR09NWkw1ODVoeEh0T0ZyQVU1?=
 =?utf-8?B?bTBLWVdnNzRGUGpCWEloNTBwS3RlWDVhTGt4STcxcjJxU0tvWThXWm9qVkxn?=
 =?utf-8?B?b2wrUnkyL3B4RVdmTlAwbVBxRVY4RUtHek9TLzhUQ084RU44eHU0YXBpelpN?=
 =?utf-8?B?WHBqeGtoMVFDSlBIVXd4LzRzRWJqYnRNR2ZMZ0JFM09uOW5RMEdnaEltckRS?=
 =?utf-8?B?Z1F2amRuNnZCWVdQeUZXV2x2S0VJTnJQcXhMU0pWanlERGV0WlRMTE5BSXpU?=
 =?utf-8?B?ekZ5eDUxUXpqKzVURTU5dHorTXBrd2wvRDJ5M3puQ2NtZHE4cnV6eldKTVJI?=
 =?utf-8?B?N3lJZ0p5T1o1UHY1cFJuUWFXdzZxNzlia25yRHU3a2tRczE2b3hmZTJ2MTI0?=
 =?utf-8?B?UUhiR2NOK0dvTlBiWGwrWnlEUkdia2Z3Y3YrNHVaT1NCZ1JuWGhDZkZybENu?=
 =?utf-8?B?RDhSOHl3akJFS1dsSXJqcUJVQTFUMDJsei9UL3h1Zk5TS2NFQmJNclkva0Za?=
 =?utf-8?B?eUgzQnA4OXNwbUJad2hZQ254SFpVUUhmZ0E1WnNPYWFXZ0xHdmwwL3cybjV5?=
 =?utf-8?B?MkNlMzVtc3Nmelg1a2NnZVdnWFYzVmZUZ3J2VDhqYnN1NWtOQ1pSRHo4TEpj?=
 =?utf-8?B?RUdocmhQQ0F4akM2WktnMHpUeVZtSk5ickh5cXh1cFNnR0dMZ1VOcFVGTUlC?=
 =?utf-8?B?cE8xeGlUZlNtcjlSemhWd09nVnBaRTB0LzVEcU1sVmJ4bXNYUS8wS1R3RzlO?=
 =?utf-8?B?V0RSVmxxVURZNG11c3h4NUxNWHZEUm11YjJzZ3ZYb09SckdZTTVIK29tZlFT?=
 =?utf-8?B?eWNXNU50T3daNDNsK2htWVhYa0N5c2QzWGoydmh4NE51QTVDRjNGalg3KzBo?=
 =?utf-8?B?S1NvV1lRR2FDUmR0TENUR21lL2MzckszRkJtWXNHWDlqZ3djSVZ4Q1lSTll5?=
 =?utf-8?B?QWlCWGwrV0hxbjlxTUl3QzNoRG5KVkFtcGd6OGJldlpJbEtTc1BXekFhSnNq?=
 =?utf-8?B?eHZVZFdHTTdxaFl4OE5zbmJCQ0FPZHpXQzNjN2orT0xzaldBc0hWMW52WnRO?=
 =?utf-8?B?cSthYXdPTkVrU0dURi9INkJPRUZqMERpbjByMjN2dGVONHFWWS9Yc0J6eXY3?=
 =?utf-8?B?bWJLNkFOeW45NVhsU3ZKS3B4dWdBNkdlSWtNRzFIT2dRSHZWUThub3dMa0hi?=
 =?utf-8?B?ZTgwZHJNT2dZWitjaFNZTXlveVBxY1BtSFFhYWxuclREWVdYMXpuNzdvOVpu?=
 =?utf-8?B?MmpEWHVpdFBMMzd4M2RkbWYyVm9xc0hCbTJaTDdiUkhTL2QvV0o3dFd0OXAx?=
 =?utf-8?B?QXpjSzhVU05lcWpSWTlSSjFoemFENDZwYUU0c3JuRVNxZkRDalV6ZTFYdHN2?=
 =?utf-8?B?aXRienB5c2VhQXFmaWVYQjVxd2dObnRjS0NoeWM4UFF1OCtPTEpCbUFZZkxH?=
 =?utf-8?B?US9EZ28zeTFXREw5bURGV2tUa3ZnZVgxMUlYMzF1R0NGWFphNndoSnFqem1E?=
 =?utf-8?B?bHlSZEUzZ2gxbmNNejlURWVPZWd0c3ZUckoza3hTcTdwR0x6SSt3Wm5PRFFV?=
 =?utf-8?B?Y0pCR3pJckxTaEMwTTZpcmJmRk9DbWpVaEhrMEZRMVA3SHB1UTU1UkZSbTRM?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a50156f-d414-4434-5d7c-08da822b2237
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2022 21:38:19.7636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eAJpJ1RK4v98f3Qks+zF5OVupxoo3TfoyPFD1EcoOuoS02exCFzIerPgMP6oPb+i/PQLxNtf98N+5njgFgEYMuTm3dl8a6osmERdtjUY0qc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1858
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660945105; x=1692481105;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mZy0+2kbyfSVoGv89y2Ac5oPJET7GMzPvA/IXzUDEqs=;
 b=lhrbt7arPnff4Bh90Xnb/gcBX0FkP0kyWNWNBdyYhyQKKnntXV/ctg6s
 4Ho/syo6fw+G2gGDyIP2eTbd8Pg4twsdFND0/1NZK0zBTZ0u9dXWWu0aL
 kzfEVNEF2weJdeOOakC6B+Zpf0yHQoBpF83zJLkb36+HiizwIssGyP9fY
 kPppVTtUOKDoGHlIq89uXCQ+OJC1UFAQwZ4NXhslnQuNbmulg3HjF/Zu0
 ngWx39xDlzo/mzEz9fX2hvHrhHoh1xdzc4vSdJ7MANiY8qYX7pUOEBXBA
 jNRrhq9UN2/KV2zH5+68aeISrn2kXJyMxiorrE8tEaBQGDrHvlV1o6txO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lhrbt7ar
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix inventory failed
 error during flash update
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/19/2022 12:21 AM, Dziedziuch, SylwesterX wrote:
>> On 8/11/2022 4:45 AM, Mateusz Palczewski wrote:
>>> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>>>
>>> After updating flash image on E810 card with NVM update tool there was
>>> an error: The inventory process failed.
>>>
>>> This was reported at bugzilla thread #2114483 and caused by the tool
>>> trying to read devlink parameters fw.mgmt.minsrev and fw.undi.minsrev
>>> but those parameters were not registered by the driver.
>>
>> Pointing to an issue when using with our userspace tool is not a good
>> justification of why this should be accepted into the kernel.
>>
>>> The ice NVM flash has a security revision field for the main NVM bank
>>> and the Option ROM bank. In addition to the revision within the
>>> module, the device also has a minimum security revision TLV area. This
>>> minimum security revision field indicates the minimum value that will
>>> be accepted for the associated security revision when loading the NVM
>> bank.
>>>
>>> These parameters are permanent (i.e. stored in flash), and are used to
>>> indicate the minimum security revision of the associated NVM bank. If
>>> the image in the bank has a lower security revision, then the flash
>>> loader will not continue loading that flash bank.
>>>
>>> Fix this by adding two new devlink parameters fw.mgmt.minsrev and
>>> fw.undi.minsrev and function to read they respective values.
>>>
>>> This idea was proposed before with both write and read funcionality
>>> but was rejected by community. This patch focuses on read only.
>>
>> How is this different/addresses the issues that caused it to be rejected
>> initially? What makes it acceptable now?
> 
> One of the concerns in the previous review was that we give the ability to change those values manually which might cause security issues. So in this change we are not allowing to modify those values only to read them for the update process to finish without errors.

Let's put this patch on pause for the moment and discuss internally. I 
think, at the very least, the commit message would need some updates to 
it so review could continue on a v2.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
