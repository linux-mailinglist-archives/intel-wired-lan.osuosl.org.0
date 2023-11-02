Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3E37DEC3B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 06:26:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0B9243342;
	Thu,  2 Nov 2023 05:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0B9243342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698902772;
	bh=4HV/fwAL7vj9LAmo8XH3JE9lbOrYkF8n0n3iFJZ9cUU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gyzmHqhm8GqYVwE7ZApG0FV5Ki+pHhnh421V3CjQ8Qc4E7IN4xFnG90NM+L3gUy2n
	 nQqLta+4hjtNk8aR6tmp9WbY43BraLZvfjk+QfgSa7mfWv/MTmKw524/qSuMdxxdTu
	 0n4J0Q0Ox3nrRbcVf6rVoH0LNxoK5OEyhszIGBhOAxSG8BF8uA3h0T+hKzhQ4YnS6M
	 QItvYSV8ceU22NHQRrUiSRwfnkn6kM7MgNll+njEJ6N0uFDod7x6Igxq4xm3e/1DSj
	 w+mblAibgNNks/KEtk4FOKPwqa5Qo+cBEYPDfYLQeKd5Gj3dvEchlkqSVwqX57ifAO
	 i5UP/IaqIJgxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swUKY5cikAa9; Thu,  2 Nov 2023 05:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B7D24002B;
	Thu,  2 Nov 2023 05:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B7D24002B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 684E91BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3951F70396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3951F70396
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-sXCNIqLbB1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 05:26:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1CB36FB16
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1CB36FB16
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="367986706"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; d="scan'208";a="367986706"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 22:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="878116048"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; d="scan'208";a="878116048"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2023 22:25:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 22:25:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 22:25:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 22:25:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 1 Nov 2023 22:25:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXh+3eYV7eqBYvW2qTclUcPvtI59QnvriWjNfe6vSOpvz3NWvlkr0Ad+mLvC+RgOVFJXUe/pXfJ/jixb843tqpI4+JRnz0hzwLSsVnksXK0imSFETPmWiP3uWg4UG+KZbBxv9RyS0bHyfFZC5j4R9bP5L+D1KAPT+TcJgpJ+RyW5vFbzb49RCw1n+CwihEfto3QS2YdSsACX9+rsayQF4WaBJg5NSrAKjBsm5ug5RaFkZtgFNflvHAp3AZn1f1nD787W+egbNTtx/4YytH5qDJR0a7qb+oR1Lu7BUs606pIuWMoeDtJ5LWR+hHs1EVd9/QqgU0Kg05Uzy1TEaKmZjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kHr9p9ufF4CpqZ3PuWSHqSqcZbb53fY3qSTKZGf7E+8=;
 b=RL52RPwTgEVCYKy5jp/VMMJ8v3nkLMyXiPZzaiSY9UT2HyGAKXfJD3+N+MkXbJHszeRIF+uitts6AvtAiIfb6zY0YgHeMJrfLcfWTUy5QRGTQ2ckVdE9HemQ7WdeTdwxyStEVzkWIF3GCYAkpakHbhhfCIZCQSwlGmWH2o5O+av1wg3aFg0XrcKiQlaWX5ydLK8H9U2X5P91Jwzfq+kIp2SAmxvtzOGgiVmrp042a0sVsCM8yDgbDB8l/u602+fbQBiSITtzd95Ifema35/8T5z4VZE0k8yvsY1jMMjj2bfrhI+iy7cpoU37HnyfHRHOGWSBhirjuLCWBqMq0Bkrhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DM4PR11MB8091.namprd11.prod.outlook.com (2603:10b6:8:182::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 05:25:40 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.021; Thu, 2 Nov 2023
 05:25:39 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Knitter, Konrad" <konrad.knitter@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5] ice: read internal
 temperature sensor
Thread-Index: AQHaBmj2hwDpG53LO0qS7etY6OpkkbBmh/yA
Date: Thu, 2 Nov 2023 05:25:38 +0000
Message-ID: <BL0PR11MB3122D789FA8BEA693B4DD71DBDA6A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231024110041.23687-1-konrad.knitter@intel.com>
In-Reply-To: <20231024110041.23687-1-konrad.knitter@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DM4PR11MB8091:EE_
x-ms-office365-filtering-correlation-id: d8138eb6-6516-4628-c288-08dbdb642664
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YG2cPUDoZTDNvh2MInZJ7jfDzA3sFFZ7bbTcFHjnV7ps9GKR9oE9Jw7u0w5v1P2+G8wWxYNQbkfUHkWvmhiw4Qmf1etZinb934lbcsaSsJ+WFVHQ+pAdIfIWSzvXcvh/xEq1hUvWi7EVzkLjUYplpVc6gdO0kqa13EWRCGShRYqhrOruVMHZynvxwx8CA5qM5RAiyBAE1/UCV2EM3Ddsoj7RXVHshi2Y6Yu41/FFeo87Q0eH4KmQDfMLIPLO/yxibMplKve4n9NlfknRRZyC+dHWIZKFpKvBhtmCSK7b7z2V476ZqW2GlRPcgR4AdxjuyHqUELsp8uRnhoYgpLzosm6x9B2z4sg51jYtdOVOsIf9oHmKUrbNTYQEuZHc0fgq67lqIroRT5+5lHhpYOAxmdz+KeQnGQc6r6oAFoiICxpx386oWI8cQUbpSf06Nkt8AfCCYDF1BNOA/cWGJvQ/ykANYRM6LhbVWjIBuQWPJHgaAaJyw8MdWvDUpW2BBdcuIUqvPwpt4hf39B8YjSJ7ky4NurWrhBbNUiZNUebV7y5XLRpX3W8eWNkNS4byP64PaWMjOxOE5I+F7bpdj/O9vfRQ0CJ0tnSmnnQLlmt/aG9BbrivfxDJ+5slTAQBpW0o3rP/A7pNmb30Sg1irfK5fVeieJkZCosnofUqMXMyhKI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(346002)(136003)(396003)(230922051799003)(230173577357003)(230273577357003)(64100799003)(451199024)(186009)(1800799009)(6506007)(478600001)(53546011)(7696005)(122000001)(41300700001)(9686003)(38100700002)(66556008)(66946007)(52536014)(76116006)(66446008)(82960400001)(5660300002)(8676002)(4326008)(110136005)(71200400001)(8936002)(33656002)(55016003)(86362001)(316002)(54906003)(64756008)(26005)(83380400001)(66476007)(38070700009)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alRvUHBOTmZ5cmkwSXU5YU9aa2hPUms3L0pJbUJpOVFjS0lqMExrL25pNHB2?=
 =?utf-8?B?U2h6Q00wODQ2QmkvaTZ1MVNxaExmNDZIQ0FUQkdtNWQvUDVHUTd5d0hKMUU0?=
 =?utf-8?B?S3RyaFhjVS9BMFBteEJIODl2d1B2U2JWOW9YQnpxRnh0dmNYS0tKRGM2NUE4?=
 =?utf-8?B?bm9LYUREa1RKWlJmNUFZSmR0bEdiTXhKZU5LSFRHQkxrYlFONGdiRk1idmRM?=
 =?utf-8?B?bER1eXQxV1dlNng3a1gzU2VGT0tYOWNtUzl5UGYyZnVmY3NuOG1qaFZMM2o3?=
 =?utf-8?B?amNZcTIzQjBkeVorMFowQ1hIL1Y0UVZqbEV0enVUTXd0VlQzT2p4MU9MSlJO?=
 =?utf-8?B?YzZ1bFFRcnhwTHpwK1gvT2JsUlZBWlhEVTBXbjBKTlorK1hEa3NrOTNLdlUy?=
 =?utf-8?B?OEVUYlgzeE9hZ2R5Z1BlYWVuODFqU3liMndvSGszUkFpZjNsYnUwaTJzTHly?=
 =?utf-8?B?WjRtZkJkSC9tOTZyYWcwUU5qenZCT0YxU2xGM2hwcVhwcHB3S2dTeEpiTVhR?=
 =?utf-8?B?Rk12NkdXenlaUG1qb2RxV1pWOEtBcmtUY2ZDK1RoOVVGdFM0dTdjQVRLaEFS?=
 =?utf-8?B?QWRzNkVmWlQ2SGpZYzZjYU1tTXJaWGgyMDQ5b0VhRm13b04wZDVNdFhFMkY3?=
 =?utf-8?B?K1F3eWxDWC9PaEdHWjNCaVdCaW1MS1Q4NEFsekJOeVdINnliZ3ExME9JMkxq?=
 =?utf-8?B?bTVOK2hENzUyQkxkd3dqTGZSTGFvUjNCMzBKTkUvbkVFQXc1QVRmY3lFbGw4?=
 =?utf-8?B?VUI3Y204NnFCcWJEM2hFeEpKK2ZBWEFVRkpnYVpOaGZkS1Z4SHhZMkpuWk1w?=
 =?utf-8?B?dlZBNk9FWm5SbG9Ea2tkMWNvZHhRRm5nU210eFo4MCtxMnh2ZVlmUVEyTnl0?=
 =?utf-8?B?OENPM05iVlNOdENVUkVVMTBBOXE1RXZrcFdYUTUvY05hOUMzN0sxbzYyMyt2?=
 =?utf-8?B?NUtYUXh4K3FGbllHOFNpUVozdXlkL2tOSzV0UjZDMzNuSGplOWFscVhaUWVj?=
 =?utf-8?B?eHRjWTlNY0FXS3lLVENvaEZqY1dWRnNjQVRvbkFLcXNkVXNHOE5sTTVLRXhQ?=
 =?utf-8?B?SnRtSTJ1S1FsWVpKSUE2a0s2SzEyTDRUb25vK2IwRVRiR01zL3hKdTNWdmty?=
 =?utf-8?B?SVlpNHRRVktyRHA2T3gwbStUOG02VVVmVkRGYTRrUHNrVW9qd0s5NGNyZEJh?=
 =?utf-8?B?Zk9ZOHVyd0x3VG5ZSUNlUlVKRkFhRDBHS2dSYjhhdEswTmNYOE1YV2FDNkVk?=
 =?utf-8?B?OFJkSFNJV2FFUW1ValV6QkJNQnJoTys5aXBXaTJ1L0o0VFp1L2lYbFdkTlVO?=
 =?utf-8?B?RHZsSmN3SUZKckdwM0tmRktHTDlPQmhUT052cHdvSEl5RENIcFNHalJUbCtE?=
 =?utf-8?B?QzFHQjhSU2JuL1Z3WW9oUTZ4aytuT3Q2ZWlzeDZ1QmRyNXFLNzM5a2RWbzh5?=
 =?utf-8?B?TmthVitwZ2d4UzQ5VDBCNXdIajk3NjBZSjJ5ckJZVXVOQUt6UDd5ZWUvTHhF?=
 =?utf-8?B?Rjh4WkZHQ01DQllHc0RyK3phZ255akdaUTNFMXZTNUFnOERvdGg1SDNGTkhU?=
 =?utf-8?B?OVN0cUpaT2RlSnE3Mmg4c1dIOXFjWW0veUdMSmNRdzNRV0pwWUZVWHJ2elY3?=
 =?utf-8?B?d3kvUEQ3ZW1HdWNJTFljcGh6SWszU3RNanJ0b0UxS0c2NWgwcEg3OUlqSXFX?=
 =?utf-8?B?WHE1eDg1NlFORUNlaXlaZ3ovUXIvNDgrTDhDU2NLSjk5b0hNSjNGTTBRa1lU?=
 =?utf-8?B?d0FGUWNqc1FxTkdOYWV6NTdwMG5XOTlZVG05ZzNodzhlMXk2Mjc1cm8xSnd3?=
 =?utf-8?B?b2dkT0lUTGVQRXp1RHd3TlBRcmxxcy80ZFRVVzhXYy9hUmE4MUdVVzBsOWFt?=
 =?utf-8?B?M2hpaWRFM0tYczh0UjNHQkZOTE0rL0ZRbS9yV1VNanE5MzY1RzRDbS8yd3lG?=
 =?utf-8?B?L2NNYVVKTVo0aDNPSVVNV2lCblV3WmtiSk50Mm5sUDdCTVNibVpjZFBPcVFx?=
 =?utf-8?B?akJOV3R4cVdGSnhvMlBTOVdlZDZVKzU4cy9jL3pIZCtyaCtrRjhZSDdvMncv?=
 =?utf-8?B?U1FXZ2ZHdGd3QWhJZ1ROOFRySUlTb2daRFVuSmoyQmw3YVdWWlVpUklQVmVQ?=
 =?utf-8?B?K0NlcFJhUC95NGhNc1hURDRNVVZ3SGJaQ1Jwbi80TmZGYU85bE1zcWsyTjFl?=
 =?utf-8?B?RVE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8138eb6-6516-4628-c288-08dbdb642664
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 05:25:39.0223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1fgWqv15fFc5UNNa1/uaVm3VYL8BUGnuDbPMmzuRkTWsCHLRp6TFnHXrSxYJ3DVphuAitWotrVRoDiwiDUDlMMwWBTr7megOXn8xEMqseRyswLXKrsqBaCffFaM1v67X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698902760; x=1730438760;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kHr9p9ufF4CpqZ3PuWSHqSqcZbb53fY3qSTKZGf7E+8=;
 b=ba1V+VO14YwrxMpSzv4+ntCz+Lm9dQnIlk/zOZQq7u43JkahT2Y7/tMe
 /zQikCkvsh/aj1Bq86Ck7TDgZi028jgAA70+RaMPTqYXzDFYPGhH2T2XG
 pmqxQ+p7N75ZqxnRoUky55yXMJRW5r9tZCyPg5R4WQSrDdrVQz4yyRSEj
 PI5/HlElQ3UEOMBD8R3x3DZY/sIYL1LIuek3hWf8j/k9/4VfzC3hNw33H
 5O/i7gn9OCvPXj1Vl4nissewW+DsfXq1so1JyUEJIvoDhFmBX6amsOQkp
 zTOPAQN828HXGbBi8VqA2j7yJ2dZC2soS72cIh43eBiH/Qy/whfztY1s6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ba1V+VO1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ice: read internal
 temperature sensor
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
Cc: "jdelvare@suse.com" <jdelvare@suse.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter,
 Konrad" <konrad.knitter@intel.com>, "Joyner, Eric" <eric.joyner@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Marcin Domagala <marcinx.domagala@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBLb25yYWQgS25p
dHRlcg0KPiBTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDI0LCAyMDIzIDQ6MzEgUE0NCj4gVG86IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBqZGVsdmFyZUBzdXNlLmNvbTsg
bmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgS25pdHRlciwgS29ucmFkIDxrb25yYWQua25pdHRlckBp
bnRlbC5jb20+OyBKb3luZXIsIEVyaWMgPGVyaWMuam95bmVyQGludGVsLmNvbT47IE1hcmNpbiBT
enljaWsgPG1hcmNpbi5zenljaWtAbGludXguaW50ZWwuY29tPjsgTWFyY2luIERvbWFnYWxhIDxt
YXJjaW54LmRvbWFnYWxhQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNs
YXcua2l0c3plbEBpbnRlbC5jb20+OyBsaW51eEByb2Vjay11cy5uZXQNCj4gU3ViamVjdDogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHY1XSBpY2U6IHJlYWQgaW50ZXJuYWwgdGVt
cGVyYXR1cmUgc2Vuc29yDQo+DQo+IFNpbmNlIDQuMzAgZmlybXdhcmUgZXhwb3NlcyBpbnRlcm5h
bCB0aGVybWFsIHNlbnNvciByZWFkaW5nIHZpYSBhZG1pbg0KPiBxdWV1ZSBjb21tYW5kcy4gRXhw
b3NlIHRob3NlIHJlYWRvdXRzIHZpYSBod21vbiBBUEkgd2hlbiBzdXBwb3J0ZWQuDQo+DQo+IERh
dGFzaGVldDoNCj4NCj4gR2V0IFNlbnNvciBSZWFkaW5nIENvbW1hbmQgKE9wY29kZTogMHgwNjMy
KQ0KPg0KPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4gfCBOYW1lICAgICAgICAgICAgICAgfCBC
eXRlcyAgfCBWYWx1ZSAgICAgICAgICAgICAgfCAgICAgICAgICBSZW1hcmtzICAgICAgICB8DQo+
ICstLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiB8IEZsYWdzICAgICAgICAgICAgICB8IDEtMCAgICB8
ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gfCBPcGNv
ZGUgICAgICAgICAgICAgfCAyLTMgICAgfCAweDA2MzIgICAgICAgICAgICAgfCBDb21tYW5kIG9w
Y29kZSAgICAgICAgICB8DQo+IHwgRGF0YWxlbiAgICAgICAgICAgIHwgNC01ICAgIHwgMCAgICAg
ICAgICAgICAgICAgIHwgTm8gZXh0ZXJuYWwgYnVmZmVyLiAgICAgfA0KPiB8IFJldHVybiB2YWx1
ZSAgICAgICB8IDYtNyAgICB8ICAgICAgICAgICAgICAgICAgICB8IFJldHVybiB2YWx1ZS4gICAg
ICAgICAgIHwNCj4gfCBDb29raWUgSGlnaCAgICAgICAgfCA4LTExICAgfCBDb29raWUgICAgICAg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IHwgQ29va2llIExvdyAgICAgICAg
IHwgMTItMTUgIHwgQ29va2llICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
fA0KPiB8IFNlbnNvciAgICAgICAgICAgICB8IDE2ICAgICB8ICAgICAgICAgICAgICAgICAgICB8
IDB4MDA6IEludGVybmFsIHRlbXAgICAgIHwNCj4gfCAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgfCAweDAxLTB4RkY6IFJlc2VydmVkLiAgICB8DQo+IHwg
Rm9ybWF0ICAgICAgICAgICAgIHwgMTcgICAgIHwgUmVxdWVzdGVkIHJlc3BvbnNlIHwgT25seSAw
eDAwIGlzIHN1cHBvcnRlZC4gfA0KPiB8ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICB8IGZv
cm1hdCAgICAgICAgICAgICB8IDB4MDEtMHhGRjogUmVzZXJ2ZWQuICAgIHwNCj4gfCBSZXNlcnZl
ZCAgICAgICAgICAgfCAxOC0yMyAgfCAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICB8DQo+IHwgRGF0YSBBZGRyZXNzIGhpZ2ggIHwgMjQtMjcgIHwgUmVzcG9uc2Ug
YnVmZmVyICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiB8ICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgICB8IGFkZHJlc3MgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgIHwNCj4gfCBEYXRhIEFkZHJlc3MgbG93ICAgfCAyOC0zMSAgfCBSZXNwb25zZSBidWZmZXIg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IHwgICAgICAgICAgICAgICAgICAgIHwg
ICAgICAgIHwgYWRkcmVzcyAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgfA0K
PiArLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4gDQo+IEdldCBTZW5zb3IgUmVhZGluZyBSZXNwb25z
ZSAoT3Bjb2RlOiAweDA2MzIpDQo+IA0KPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0r
LS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4gfCBOYW1l
ICAgICAgICAgICAgICAgfCBCeXRlcyAgfCBWYWx1ZSAgICAgICAgICAgICAgfCAgICAgICAgICBS
ZW1hcmtzICAgICAgICB8DQo+ICstLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0t
LS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiB8IEZsYWdzICAgICAg
ICAgICAgICB8IDEtMCAgICB8ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgIHwNCj4gfCBPcGNvZGUgICAgICAgICAgICAgfCAyLTMgICAgfCAweDA2MzIgICAgICAg
ICAgICAgfCBDb21tYW5kIG9wY29kZSAgICAgICAgICB8DQo+IHwgRGF0YWxlbiAgICAgICAgICAg
IHwgNC01ICAgIHwgMCAgICAgICAgICAgICAgICAgIHwgTm8gZXh0ZXJuYWwgYnVmZmVyICAgICAg
fA0KPiB8IFJldHVybiB2YWx1ZSAgICAgICB8IDYtNyAgICB8ICAgICAgICAgICAgICAgICAgICB8
IFJldHVybiB2YWx1ZS4gICAgICAgICAgIHwNCj4gfCAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgfCBFSU5WQUw6IEludmFsaWQgICAgICAgICB8DQo+IHwg
ICAgICAgICAgICAgICAgICAgIHwgICAgICAgIHwgICAgICAgICAgICAgICAgICAgIHwgcGFyYW1l
dGVycyAgICAgICAgICAgICAgfA0KPiB8ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICB8IEVOT0VOVDogVW5zdXBwb3J0ZWQgICAgIHwNCj4gfCAgICAgICAg
ICAgICAgICAgICAgfCAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgfCBzZW5zb3IgICAgICAg
ICAgICAgICAgICB8DQo+IHwgICAgICAgICAgICAgICAgICAgIHwgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgIHwgRUlPOiBTZW5zb3IgYWNjZXNzICAgICAgfA0KPiB8ICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICB8IGVycm9yICAgICAgICAgICAgICAg
ICAgIHwNCj4gfCBDb29raWUgSGlnaCAgICAgICAgfCA4LTExICAgfCBDb29raWUgICAgICAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IHwgQ29va2llIExvdyAgICAgICAgIHwg
MTItMTUgIHwgQ29va2llICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgfA0K
PiB8IFNlbnNvciBSZWFkaW5nICAgICB8IDE2LTIzICB8ICAgICAgICAgICAgICAgICAgICB8IEZv
cm1hdCBvZiB0aGUgcmVhZGluZyAgIHwNCj4gfCAgICAgICAgICAgICAgICAgICAgfCAgICAgICAg
fCAgICAgICAgICAgICAgICAgICAgfCBpcyBkZXBlbmRlbnQgb24gcmVxdWVzdCB8DQo+IHwgRGF0
YSBBZGRyZXNzIGhpZ2ggIHwgMjQtMjcgIHwgUmVzcG9uc2UgYnVmZmVyICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgfA0KPiB8ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICB8IGFkZHJl
c3MgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gfCBEYXRhIEFkZHJl
c3MgbG93ICAgfCAyOC0zMSAgfCBSZXNwb25zZSBidWZmZXIgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICB8DQo+IHwgICAgICAgICAgICAgICAgICAgIHwgICAgICAgIHwgYWRkcmVzcyAgICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiArLS0tLS0tLS0tLS0tLS0tLS0t
LS0rLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsNCj4NCj4gU2Vuc29yIFJlYWRpbmcgZm9yIFNlbnNvciAweDAwIChJbnRlcm5hbCBDaGlwIFRl
bXBlcmF0dXJlKToNCj4gDQo+ICstLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0t
LS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiB8IE5hbWUgICAgICAg
ICAgICAgICB8IEJ5dGVzICB8IFZhbHVlICAgICAgICAgICAgICB8ICAgICAgICAgIFJlbWFya3Mg
ICAgICAgIHwNCj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tLS0tLS0t
LS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rDQo+IHwgVGhlcm1hbCBTZW5zb3IgICAg
IHwgMCAgICAgIHwgICAgICAgICAgICAgICAgICAgIHwgUmVhZGluZyBpbiBkZWdyZWVzICAgICAg
fA0KPiB8IHJlYWRpbmcgICAgICAgICAgICB8ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICB8
IENlbHNpdXMuIFNpZ25lZCBpbnQ4ICAgIHwNCj4gfCBXYXJuaW5nIEhpZ2ggICAgICAgfCAxICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgfCBXYXJuaW5nIEhpZ2ggdGhyZXNob2xkICB8DQo+IHwg
dGhyZXNob2xkICAgICAgICAgIHwgICAgICAgIHwgICAgICAgICAgICAgICAgICAgIHwgaW4gZGVn
cmVlcyBDZWxzaXVzLiAgICAgfA0KPiB8ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICB8IFVuc2lnbmVkIGludDguICAgICAgICAgIHwNCj4gfCAgICAgICAg
ICAgICAgICAgICAgfCAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgfCAweEZGIHdoZW4gdW5z
dXBwb3J0ZWQgICB8DQo+IHwgQ3JpdGljYWwgSGlnaCAgICAgIHwgMiAgICAgIHwgICAgICAgICAg
ICAgICAgICAgIHwgQ3JpdGljYWwgSGlnaCB0aHJlc2hvbGQgfA0KPiB8IHRocmVzaG9sZCAgICAg
ICAgICB8ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICB8IGluIGRlZ3JlZXMgQ2Vsc2l1cy4g
ICAgIHwNCj4gfCAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgfCBVbnNpZ25lZCBpbnQ4LiAgICAgICAgICB8DQo+IHwgICAgICAgICAgICAgICAgICAgIHwg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgIHwgMHhGRiB3aGVuIHVuc3VwcG9ydGVkICAgfA0K
PiB8IEZhdGFsIEhpZ2ggICAgICAgICB8IDMgICAgICB8ICAgICAgICAgICAgICAgICAgICB8IEZh
dGFsIEhpZ2ggdGhyZXNob2xkICAgIHwNCj4gfCB0aHJlc2hvbGQgICAgICAgICAgfCAgICAgICAg
fCAgICAgICAgICAgICAgICAgICAgfCBpbiBkZWdyZWVzIENlbHNpdXMuICAgICB8DQo+IHwgICAg
ICAgICAgICAgICAgICAgIHwgICAgICAgIHwgICAgICAgICAgICAgICAgICAgIHwgVW5zaWduZWQg
aW50OC4gICAgICAgICAgfA0KPiB8ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICB8IDB4RkYgd2hlbiB1bnN1cHBvcnRlZCAgIHwNCj4gfCBSZXNlcnZlZCAg
ICAgICAgICAgfCA0LTcgICAgfCAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICB8DQo+ICstLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLS0tLS0t
LS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPg0KPiBEcml2ZXIgcHJvdmlkZXMg
Y3VycmVudCByZWFkaW5nIGZyb20gSFcgYXMgd2VsbCBhcyBkZXZpY2Ugc3BlY2lmaWMNCj4gdGhy
ZXNob2xkcyBmb3IgdGhlcm1hbCBhbGFybSAoV2FybmluZywgQ3JpdGljYWwsIEZhdGFsKSBldmVu
dHMuDQo+DQo+ICQgc2Vuc29ycw0KPiANCj4gT3V0cHV0DQo+ID09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiBpY2UtcGNpLWIxMDANCj4g
QWRhcHRlcjogUENJIGFkYXB0ZXINCj4gdGVtcDE6ICAgICAgICArNjIuMMKwQyAgKGhpZ2ggPSAr
OTUuMMKwQywgY3JpdCA9ICsxMDUuMMKwQykNCj4gICAgICAgICAgICAgICAgICAgICAgICAoZW1l
cmcgPSArMTE1LjDCsEMpDQo+DQo+IFRlc3RlZCBvbiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5l
dCBDb250cm9sbGVyIEU4MTAtQyBmb3IgU0ZQDQo+DQo+IENvLWRldmVsb3BlZC1ieTogTWFyY2lu
IERvbWFnYWxhIDxtYXJjaW54LmRvbWFnYWxhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
TWFyY2luIERvbWFnYWxhIDxtYXJjaW54LmRvbWFnYWxhQGludGVsLmNvbT4NCj4gQ28tZGV2ZWxv
cGVkLWJ5OiBFcmljIEpveW5lciA8ZXJpYy5qb3luZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBFcmljIEpveW5lciA8ZXJpYy5qb3luZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTog
TWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+DQo+IFJldmlld2Vk
LWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IEtvbnJhZCBLbml0dGVyIDxrb25yYWQua25pdHRlckBpbnRlbC5jb20+DQo+
IC0tLQ0KPiB2NTogYWRkaXRpb25hbCBkb2N1bWVudGF0aW9uLCBmaXggQ09ORklHX0lDRT15LCBD
T05GSUdfSFdNT049bQ0KPiB2NDogYWRkZWQgZGVwZW5kZW5jeSBjb25maWdfaHdtb24sIGNsZWFu
dXBzDQo+IHYzOiBhZGQgU1BEWCBpZGVudGlmaWNhdGlvbiB0byBpY2VfaHdtb24gZmlsZXMNCj4g
djI6IGZpeCBmb3JtbWF0aW5nIGlzc3VlcywgYWRkZWQgaHdtb24gbWFpbnRhaW5lcnMgdG8gQ2MN
Cj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9LY29uZmlnICAgICAgICAgICAg
fCAgMTEgKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9NYWtlZmlsZSAgICAg
ICB8ICAgMSArDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmggICAgICAg
ICAgfCAgIDEgKw0KPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQu
aCAgIHwgIDI4ICsrKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29t
bW9uLmMgICB8ICA1NCArKysrKysrLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9jb21tb24uaCAgIHwgICAyICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfaHdtb24uYyAgICB8IDEyNiArKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfaHdtb24uaCAgICB8ICAxNSArKysNCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgICB8ICAgNSArDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaCAgICAgfCAgIDcgKw0KPiAgMTAgZmls
ZXMgY2hhbmdlZCwgMjQ5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2h3bW9uLmMNCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2h3
bW9uLmgNCj4NCg0KVGVzdGVkLWJ5OiBQdWNoYSBIaW1hc2VraGFyIFJlZGR5IDxoaW1hc2VraGFy
eC5yZWRkeS5wdWNoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
