Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3247163CA81
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 22:31:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5C5F40647;
	Tue, 29 Nov 2022 21:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5C5F40647
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669757513;
	bh=oMcWOznPTl7ywsMOtLqwrYzrXsDLJUZM1PiiR9oaAeM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vty/j7mqJ0Wd0IrSUF52KQbdhn8cQbPyUbWL3huJHqcpq30bWj00ocTNXHNyH0buo
	 8iNbRG95DhXwPh9018qMPVSgpXTvdqOa5jsNhCOA2xj9PHpGkNRi7iFJZSj5ccP6R6
	 3cH0zEpaYE5kZaZjryJ2/KELkEc65oTOQQrnSHH1EMo37BKjI8Yjcp9kP49uysoPjd
	 fVbrRQV0XMvTVuezaFZOk5Rjk5FzSqwGX2o9wvVrqIr0MkpLUz+TON/fFMLytrD498
	 ZCXDTizvbVGfP9OUY08Gsf7cSDO3f7x9tAwdMv39DeVUzL2pnoj+stW3kfIjPqU34A
	 XcpHQAMVfMZgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AiFzkpj8ImDq; Tue, 29 Nov 2022 21:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 980DA4031D;
	Tue, 29 Nov 2022 21:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 980DA4031D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 335451BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D68A81EBD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D68A81EBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7kHWlrS6L-t8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 21:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61A0A81EBB
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61A0A81EBB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:31:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="342156641"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="342156641"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 13:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="818379217"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="818379217"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 29 Nov 2022 13:31:46 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:31:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 13:31:45 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 13:31:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IQrnQd3DImtF0/3BWeSfBVpxLtkA7OzefMARIAujobuT31rcbRrIjyT7TNfTECfLvB4cZzw7R4GgWLHYlXbRfCr/Tmz6fYE7A5lCC0vLl1A+IC4LTcKnrZmYtpJS1tlEYZVai8fUMb7BgkeJJM4TYyfkTnNSHw+sddBAnhtMiSp6ed3uEez5wAlsv3F2Ve2+mf9cB7TAto2riRH/QoMODyvTEiQt3NQfsaEvH4sA3jynAbSfPqpqv7SCZFGoe4ePbOq2aKuJH2mzSX2HJojvwnnkq+rm0c/x27CuFqwGqvplqFLoMEsCpOoqVi3vdh5kzA9TsAKyQeNmLbXAgfxn2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pi/DQQ4cB0X+fw8DwRQWQdDa4vF3iXRJRg6/vLWn1m4=;
 b=LIC3+Hkq0P3fxc8OlWUj6X5YH/vNhaKtT0UMa3q3Sm57d6WhlC5oXLuMkncLAiFUFMUEntFq+SUV7JtFO6JItnUfCSRtfqfS6DOJSWRgvpFP7CSOhqxXZfS0qcI/09PRhIA+sAipoPpnoI1lTGX+MfcQfuQrdtmw6/38bBwjmk8VxFaJIHhutz4Cxrf3VcQgBCWKe8Fy2mpwQRpJAcRMy32ol6qugCxYvG9dCwZ0M8uGiatWTcburQ0FANXUFH5XcLnUALbseFmD/GkDOJDfMahnk+hczuxpusL7FqE451i8uFeXes1W0FDzootZtXFyWkAa6/RjtNDtr62+U/KBaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 21:31:41 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::d9e:bd1:43b5:e27]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::d9e:bd1:43b5:e27%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 21:31:41 +0000
Message-ID: <2ec7c13a-4af3-d8ea-5612-7d6350663c20@intel.com>
Date: Tue, 29 Nov 2022 13:31:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Alexander Lobakin <alexandr.lobakin@intel.com>, "Wilczynski, Michal"
 <michal.wilczynski@intel.com>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-4-paul.m.stillwell.jr@intel.com>
 <074d1d3b-41e8-55a9-8c9b-0002e3d7f60d@intel.com>
 <20221129133032.3084152-1-alexandr.lobakin@intel.com>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <20221129133032.3084152-1-alexandr.lobakin@intel.com>
X-ClientProxiedBy: SJ0PR03CA0255.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::20) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|CO1PR11MB5169:EE_
X-MS-Office365-Filtering-Correlation-Id: c184d130-fa6e-4ffb-9e95-08dad2511b1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EC4p7q32jaDJWh8Tf/CNSN3ZK5yQTO/V+vElYArwEnFcpPzELY2O4VzTENN41RT6aCzTfWIxKaUOyjsnsTRKR8avAfL6Il3TjzBfYuK2CLYn5hTWnqQN2W5Andk8xWuxFlpg8c5+th2oeIr2MMaJavsw5QAiqRAMIOuMEUQ059r2Opuc2Po2F6tddSg1MA0qEirpJz2vW08FlG/WyfEyingV1pnHlDE7d8AYarQPJuCjBjLjCdDvxxha/L5sB53zvik/Tkq1huMgMCFKI4INyB6xW47FSzqpurMVJSeRNvFhWMPhBbOoMnG9hwdvOvkuHcbAyG2BAn7gFCbIEJFyYYSCTxmkZ2o22SYLb/DWjekB6AzROJ2Ls6weAwS3+s93D5som0htUvGINOb2j92x+k55nUVyzTrO/vyU/1BlMay81xRnEbXCNX/PzmLxhJvX8G4VnZDc8hOqvyWSc3j2dn71vrRoG8f+5T2vWSAJtUdEYYVMUXuo06+wwWOSFiMygwaRKF1pB5sbrcArPN6l8J7Q8uSbRz83mlErIOMa30je7f27RmWICLzmQzwGdlTdx9d4vtK5Mp/h+PHBtKeslaoGcljRv/Ke48TqleIoLr4/qWOufo+EyW9FhQV3KXW72fDhvxxGMFVM4o6uSGJ1cXS86B/T0vrJqDbCak1rfJKRklKnBzh/1NQlHTFGvo8c0cMKNJbHq+GC3G5tlwHONbTd6goaIk/PBRKEwQMnkRA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199015)(316002)(2906002)(478600001)(36756003)(6486002)(110136005)(6636002)(66946007)(82960400001)(38100700002)(26005)(6506007)(86362001)(6512007)(53546011)(31696002)(2616005)(186003)(5660300002)(41300700001)(8936002)(8676002)(66556008)(66476007)(4326008)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUQ5Z25JNDR1TGU3OXpvZjhld3VST3FMOUxuVDJ6NHA0K3lZQjVCNXdpYVBG?=
 =?utf-8?B?SFBzUGNkN1h3VkVXVHQ4SnVZSlZWdzBDYTArMTUwTXUxNEkvL2t3UXNwTG5m?=
 =?utf-8?B?TjZxdEZIakR2UkFKaHlWaTUzSk9Dc2ZMN0RhRlQrcG9NNkFrYkppaHA3NnVM?=
 =?utf-8?B?VnhZNDhxR2R5RTRyUGF6U1VqOE5FOFRuQXF6eDJhTCtzNkNpYUtNanJEdFVw?=
 =?utf-8?B?K1Q3MW5YcXl1MXZ0ZXNWT0poMWViTEtzTnIzVkhPZ1ovN2I2d2Jndi8rZzJL?=
 =?utf-8?B?OHJ3dW02ZlZxYVB6RjduSERwR0Q2V0JkbCticGx5UTZGTlVDNnI5UVlhV05i?=
 =?utf-8?B?cFlqdHZmK1dESysxTmo4RjFoUGd2QWZld21lTXZ0VW5VNmN6WS80dXNnVFVi?=
 =?utf-8?B?WU5IcnZYTEw0TkQ0dmNpdnZtb0d3aGZkbUQralVKa2E1dHF6akh0U2N4YUsr?=
 =?utf-8?B?OTJDQ2w0UlN3Vm1EQko5SDNwcnk3RTNuTjhBTnBJUFptQVJHOGFSYytDNkpU?=
 =?utf-8?B?Q21Qbi83TmExZzNQcjZ0ZEtQamp1dmlpaEFiemZxeDM0Qk05TUVGWlJNVzVP?=
 =?utf-8?B?ODRhcUFiUEp4UTBPbDF4aEJrUUlOTEVTMCtoTEw1TmpXUTZvbERHQWMxVjFi?=
 =?utf-8?B?OGRzRmh1U0tkL1BxMlA4bWxKZWY3d2FiSE82OTh6RlFNRWpPYWl2eHFpQks4?=
 =?utf-8?B?cHVGRVNGK2FjSjQvN3psU3hONkJLZkMwRUZ5OXVzU1ZybTNBMzN1T214eU9T?=
 =?utf-8?B?ckFhaFJBaVhnNlB4ZkRIRC9yN3JiVnd1SWFlMk8rS0FxUEVHREtRMWRwMUZ4?=
 =?utf-8?B?VTNDWTVCM0ZUQ2FpRkNvSngzY1JXUmRPVndzV3dVQTZjTTFhMmtReHRCM3VY?=
 =?utf-8?B?RGZyYVNxMTAxVkRFVHdIQ2loNWIwUVhMU0ltYmd6TWVxb05vczFCYVBMRHlH?=
 =?utf-8?B?NFo4NTJmTXBHLytsYkRBZ1l3TldSOUFyajJKSnVVVlpHQURZeVdYWUJ6UnU1?=
 =?utf-8?B?ZW9YTjdVRmRGaTFKbG9XejNQTG1JaTFXV1JSVEE5RXdNTGxkcGRwU2R3eEJm?=
 =?utf-8?B?Y3UxSytMNnp5Y0xPVS9LdlJXVUNXQlU5bkc2Yi8wVVBjdFRveWhYSTJjRFVn?=
 =?utf-8?B?ZGVMSjVFYkdna3Jya2V4YXdxZFJSd3lSMXVidDUyR2poQVFsNmRxd1cwUll0?=
 =?utf-8?B?T0UvTmpNdlZka3kyZVBiVHdHU3dlSzV4SU5PYnQ0Wkp0RTlobkFlWktZdHZr?=
 =?utf-8?B?RFNCQ0NtYUZWZU9CTURkTllkVWk5ajloNWwwaFBHUE85QmR5aFpaaGVpeDUz?=
 =?utf-8?B?OGVCSTVWRWJkSGZrTGN1M0ExUnZ3cEtWeSt5Q0p2RnR3TDR0NjkzU0ZqU2Jp?=
 =?utf-8?B?d0tSdThEd3BQV0doejNNMm5GYmdJYVE0OERpQ0ZuaHJ5cE1LQmZlY1cvaEc2?=
 =?utf-8?B?NkZMNW52UzZEUHppWTRNQXJhdkQ4bDQxOWhMVHcxbjJoRU43REx4Z21tVmV6?=
 =?utf-8?B?bGlOY2FTeEl4YllwSExIWkQwcWRwZkVjRnZUd2NyRkFvaWFOSzBqZUZ5cjN1?=
 =?utf-8?B?R0ttKzVOSFlhQXFsVUczcnNzU0ROL0Jrb2xPOEQycElSa2s0cGZFYy9YejI0?=
 =?utf-8?B?U2hBaVNCVWxxeGY0UlpwT3RLbWlscEpoYkR5TXgyMnhkYWZ3dHhXY0J2T2po?=
 =?utf-8?B?UVN1UXIrTmVBTUZDajQ3dDZwQi9RQWs2SjFxRW5ndmkvdVdHQTFUd3pKYUlp?=
 =?utf-8?B?V2RlUUk1RjFTZnNKTjNGN2RSc3NJTXBib2FRU0g5RHRIZTczbmJZeE8rT29j?=
 =?utf-8?B?Y1VSdHd0UVJ2Z2FtWHZmSU9BTnl6czltWUU5eEZHZHVqZ3JMWjFUclVhTUdV?=
 =?utf-8?B?cUorSnJ3L3BEWWJEY3BUT2pDUXRIem9PUllpUWNWSDBLY3hGbXJJdFJ6SXF5?=
 =?utf-8?B?dmN0TTQ3Zzd2dmdpd3JTSUtyZm1IOUxNV09RYXZPSkFyOTJ1QUo4WkZIMDhU?=
 =?utf-8?B?OEIyRmdhM0cvSGlFNDd2MGhmSjcrMGNzNjBJWUdNZUlQS2dqdVY2Q0tWcWFy?=
 =?utf-8?B?WjlReW9aeVNUN1Axc3BYQk9FdldTTHM1ZG1VT3ZGYndmUWYxTGI0SE9lajdJ?=
 =?utf-8?B?VExEMzFLZE04MWpaT2lGSWJhUFU3VFE3Y080RVgwM0g3NStaeWthOFpxVFVN?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c184d130-fa6e-4ffb-9e95-08dad2511b1f
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 21:31:41.6993 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mveinN1YE9V+ya0JBgA7RglHzbyHiP5otZiMJfzfRQqFb1JnftZdLjqkFSQ2z/Mo1ctmiHsNsQlhrca+WOzFktK+BUhExMtccy0MpveS3zE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5169
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669757507; x=1701293507;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZeQ5EFFyO7/LIn4lvdkDlF+DE+pXajURKCaXwQwub6A=;
 b=P7pWp7Q0I9pgA5/9KOkOa7ahTiwTTlMhkIcP5KrVK13gczVDuxPgGHgx
 gxXYULCqaQbcUfLk+1UTDTe45KQePT4TLemhGkH6JuPu3ySxj+buiE86w
 xID5r1l+SX07429eg2/xGChsw63TighQwvDP0Mmx2MCNa5ZjDoXP+qSyv
 bVVBNGvqGRRVKrAX7I883dJBFms112qLul3VuNyZsmFCV2Xejgx0ZYJTP
 gI7hZUdStMbqaNSCJ50SxRC0XcnnWmaxjVFCnong89hSud9FhsLT4IfFJ
 cFJzX66xobcp54Fiv2+vtZmTs2roWlRWXwsKflbhaBf+52Fe/2nQ9vSY4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P7pWp7Q0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] ice: add ability to
 query/set FW log level and resolution
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/29/2022 5:30 AM, Alexander Lobakin wrote:
> From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
> Date: Tue, 29 Nov 2022 12:48:25 +0100
> 
>> On 11/28/2022 10:47 PM, Paul M Stillwell Jr wrote:
>>> The E8xx has the ability to change the FW log level and
>>> the granularity at which the logs get output. Enable
>>> the ability to see what the current values are and to
>>> change them.
>>>
>>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> [...]
> 
>>> +	/* send the cfg to FW and register for events */
>>> +	status = ice_fwlog_set(hw, &hw->fwlog_cfg);
>>> +	if (status)
>>> +		return status;
>>> +
>>> +	if (hw->fwlog_ena) {
>>> +		status = ice_fwlog_register(hw);
>>> +		if (status)
>>> +			return status;
>>> +	} else {
>>> +		status = ice_fwlog_unregister(hw);
>>> +		if (status)
>>> +			return status;
>>> +	}
>>
>> This could be simplified i.e
>>
>> if (hw->fwlog_ena) {
>> 	status = ice_fwlog_register(hw);
>> else
>>          status = ice_fwlog_unregister(hw);
>>
>> 	return status;
> 
> 	return hw->fwlog_ena ? ice_fwlog_register(hw) : ice_fwlog_unregister(hw);

Will change.

>>
>>
>>> +
>>> +	return 0;
>>> +}
> 
> [...]
> 
> Thanks,
> Olek

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
