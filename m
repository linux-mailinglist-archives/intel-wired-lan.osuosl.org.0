Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC745B9FA3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 18:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD02083089;
	Thu, 15 Sep 2022 16:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD02083089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663259471;
	bh=jjU5e1OWpdRh5itotf71EWJhHq21u7QDi2Y57pdz7GY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J1v9vy10cUyH55gR4K5qsAaG4w+W7IqjTb5YzU/gD9ZAniqSHd1ms7uFoLztFSg1U
	 omN5pF2GDhPynKrnm8xn1A/qajfDss5kAeX5TKqjcBdvr+qFWTlskwed82PDoiAJRe
	 9gv76sq+HvyYHIebt19t5rWjwHIi4AsXV9hiCB9DrWSNRtYtvRNH954x07BlpgHGMv
	 5oqeAbL1aN0DdGIo83MXlV0qEou4kIgIKJ6kjCytwLb1VF+L31huyhdroDw/6H420U
	 /Ph2ZF+peoPO9M2qjnIikD6DMPai7ee/2khWOq/yHn/L0e0cCMnYaELkHq6W8M0s/r
	 CaSOhfqJPk1rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2h6PLniIvfEy; Thu, 15 Sep 2022 16:31:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBB8383E2D;
	Thu, 15 Sep 2022 16:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBB8383E2D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7D9E1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 16:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEA39409C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 16:31:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEA39409C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyWc4zYn8sxq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Sep 2022 16:31:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01FE24010C
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01FE24010C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 16:31:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="385056105"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="385056105"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="619759682"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 15 Sep 2022 09:30:58 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:30:57 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:30:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 09:30:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 09:30:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bR44otzbq9mIWvFQo3JHS/PBfEHPb+Qy8C+VywHRE997Wlk8UzZ+L8OK0pDGlinLIXJu6h831b+5Oux+YrfoUc1h6PvroMNkPEgq/0dtDjmxdD6Mk56kLbGinqawAHfUEy6OTvm7TH+KAOmXxHa+LeFR7k7TaOlb7vLW49NvqwNLMXryIRAVDeF2+JD3K9y4eGa82VUIU59OS8rtsobAFccgfvEKcR8dpitMWg8BXztEL9JUx32smY1efH9vN73/CC5FQEnw1rCzgTwJvvXT0RQ6Ko0Zpe+XXj9OkOc7PMh0lBtyGASaz9RtXnqs6aIrpc/JtpUzxHR7QEjBStZ0hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oUE0IXFNBqmEiuPOyjYNxTH4Jhhn5uqOWXVM8T3ZD+M=;
 b=RyZ52CwNI0tRFSKkggUJpi8vJBejPaa6m47lpTvRAko+rwk+H4ENqBQ1pEtswjaH/wxszwedNwrVHAu/capFruq0ueIVIjnGjnybrLDyCMh/UI0PcVfIIEexQ7XGX1TpEDDv72EG4EhNcQpAysC6Dit2xdnyUtcNj1guzOzbx2vc9R2nsRtjRhKi2A0xY/+FR4BBDx0/dI8+ubjacUYAsdQIeYYtOZUKP0Dkwxun+stdblP72+d5H47UdPySKSjvrCsGlRPD6SExvz3oNi5AnWJbedY/25ORUURgF+OgGNl9AwzSIhJwlMIv5gF9mpCV8vCnojOLeMDshnB920b2kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Thu, 15 Sep
 2022 16:30:54 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 16:30:54 +0000
Message-ID: <96855b74-5b77-4426-891b-d638ead17cd6@intel.com>
Date: Thu, 15 Sep 2022 09:30:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>, <linux-hwmon@vger.kernel.org>
References: <20220915124012.28811-1-fmdefrancesco@gmail.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220915124012.28811-1-fmdefrancesco@gmail.com>
X-ClientProxiedBy: SJ0PR05CA0153.namprd05.prod.outlook.com
 (2603:10b6:a03:339::8) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW3PR11MB4746:EE_
X-MS-Office365-Filtering-Correlation-Id: 013b9cea-f03e-4f48-d1a2-08da9737a8f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZrAjsF/xQK1bD/lAqZEzb+X5qfbhFf1FenSN0jqtxrO6M0IGRLTtwTs9ZNgEVsE1Pn0rbOSJIs6pwotrswxJ5xHv7egPYllO75uUNcurrI5luQKztCgarrCF4YRcFRZaiDnZmEYXn2WqEChpb/fAHANmhVT3C7TlUHKfaGcuLYF3i8y3Tkdoprp9b4I5hxjJ6N1ktrIr3tFiuDsxBgtg3+Z9VIDb59i8V26CB6g/afdMxNKYI1nMGfgSUU9sP7bagVtNsiEAiJDaroU9HzEKCVQI5Sz2T27NCTE5bJqJ1/1fy1/NPTEVrhzBYGvWeh63W/KSojGrtzeDkdr6JtZTUK+yfVn3m0bV0mbY8yO21k4jYSWrJLO/emCJE7CP7YExfLJxSHuGKAoUVxXvhBi7SBRQt7CokZy7TpciJMsBw+1kEhW/lMtUC9ulLT7ryak871YSbNIXb0RGOcvH+ouKcwJKfq+HzeWjAOfNS1zHTIDjRi8uuncqwR+OnO0Tcm+yUxQgbmq6mGqW8ZqMZl+rz8Z5jbI3yAO1C3ip8tuFN2v7j1HwLEiyavf5gMxD8MmA+e4xmk9L4nzOQLrUf42E3XGlftKRAi256VdJrh8lbIqS1T5wMefpSdBcUimP85bV+hRnxdEg0O4scTIIqkQd1yIIz+bXWPIaN9qbGDtR6krSbX2zkX8XTXqzMQrg7M8HL/FYCLBEl1hD9MjlcmpGsyZXCkoxlmWwRW0shJdzV3141vYUQRyIVk+bUU1Hvn0U6oj24aRrmejVJSEUttAnaAweJEqI0wldliczwk5mSVh22KSRnX5qGshcVTGirGCQuDeO4uBPtiM/7V8aNxiG4Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199015)(7416002)(186003)(31696002)(8936002)(6486002)(110136005)(966005)(921005)(86362001)(53546011)(41300700001)(107886003)(316002)(478600001)(54906003)(6506007)(4326008)(2616005)(38100700002)(31686004)(6666004)(66556008)(6512007)(66946007)(5660300002)(82960400001)(36756003)(26005)(8676002)(66476007)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUpZakR2dUlOc2cxblBvZk9ldjlFaysyeklURWsrZ1FGbTY4cUdUbWVxY1la?=
 =?utf-8?B?bFhuWldOajY4VDg0ZFd5bmY2QVR3ekVEV3FaTllWS1IrWlBBK0JCSlVkYWdS?=
 =?utf-8?B?NjhwcG1hSXNYY0hoWGVpYktuVHBXNkEyMmZxNmE3NHA4U1pvSEsrL25uV2Rt?=
 =?utf-8?B?RFhNQ2JJV1ZQb3MzQzBaMnRwZnZBN0lRN2R2Z1Q1SVU1RCtjeW56Rmx5dVIw?=
 =?utf-8?B?K0FsbGFSVTc5SVk0RUR2V1V5ZWk0dHRBaXI2aENseHAwT1lBdytCdnp0RU5S?=
 =?utf-8?B?RTJ3aTFNNmkrVFZFRS9Rd1hwYzNSMzhCK0pORWFmZmFjVy9oMUV3NnIrM0V0?=
 =?utf-8?B?RlN3Q3ViM1dEeE5tU28vNlVkTG5lNTF2YTJJb21hV0hGQnl5TG1odmtEcFgx?=
 =?utf-8?B?LzN5NUJZM0NIay9CWG1HMys0YXVtWFlnNExIejdCQzhZNzJrcjByNWU2a1hu?=
 =?utf-8?B?Z29JRE1wV2xBRWtpUGdNamtvZ0diUmJoVVFWUGJZOTkwL2s3a1V0bTNzK1c3?=
 =?utf-8?B?VU0rR2JSa1VmRjdxdG1OTENwTWdFdjFYSjRLdWwrWUdaeUp1ZWNMdmFjQkow?=
 =?utf-8?B?WWJtbUFxUWhSQzNCVExWZmo5dGNobGJqalBnQ1AwMHVHdldEdVZlYkhXL3dO?=
 =?utf-8?B?R2orcXVBcEtaQVdtOFI0ZjF2UmYrc2hleXA0TGlucDRTRVBuWVRnZG96ZVBZ?=
 =?utf-8?B?UmpndUxjVkMyWURBWVBPVzMyUklpUlRKUVQxb2JpVXlFZkNiRDJDSDVhSHpt?=
 =?utf-8?B?ZHc5anFVUEw1WTFNZUtueTV5VlM2czdXNW9QUzBZVFE4MWtNL1hqcUVjQk1a?=
 =?utf-8?B?SCtaRDZ6cGxiREM0UnV5NnJDSkxpWW5KaTl3UU4vb1lQcmFxYm5TRnlFTlI5?=
 =?utf-8?B?SjVTWGRZNHBoT3ZqY3lEWVBxbHpVbWhoWEVoQkorVjNoSVQ4SWZVdHF1WFJ3?=
 =?utf-8?B?K0dSQUNpTldZQVNvODdrK0xPNEJZMGJCR2xSd3ZpRDlGMVpmSWExQnpFYUpy?=
 =?utf-8?B?eCtHMHBKbUhLSmJxMUpvYlYvQTJsVnQ3bm5CMDNFaXJpdSsrdXBLQTZ4ak1J?=
 =?utf-8?B?RUQxRFovakJUN000TmtXaXErQlA2cXVyWm5WTEpzMlVjL05UMkNmZnBiVnAv?=
 =?utf-8?B?U0lSZUgzSzlHb0l4Q2ZIU0d0T3owOUE2a2NsMjNUU0lVSzZ5UnV5YThuaW1x?=
 =?utf-8?B?MENxM252RXlRV2dxN2U0SEtSdVJYdGdPQUtUM3lTelQxZmp3NWFhRUNmbGJn?=
 =?utf-8?B?V09lN3ZxN21NUm1JeDJNUkwwN21yZWJEVUVQQjFWckRVWnQrNTFMbk9rbU9j?=
 =?utf-8?B?YnNyQnRYejd5Q2QrU29LNStFQjlGMnZYVUsxKzBUamVJZUpBZUF4K1JSbDhR?=
 =?utf-8?B?dXJ6N3MxSitCYVhWUFc5YUtVTStpUTdSaDNYTmVZOXI0VWxWY3pIdGF1U0ty?=
 =?utf-8?B?ck9vaERCd0EvNDdENWlWbEFmRmI3T3NxaS9hTG5RTHFIbUZtQmp3a3ZWeVFa?=
 =?utf-8?B?eHpER1ZwTzZEaU94VTV2MEU4VUVCQm1vNkk0SzhVL1ZmakFXRGYrZ3V3M3hr?=
 =?utf-8?B?cFk5Q0tKUmRHaDdZbWthSHpUOFVHcllIdmMzcHRsS3F0aEd0b2JtcG8zUVBu?=
 =?utf-8?B?KzlUeE44YVdNaFZxcFNWTmNwU1JlSWhvQ25aWTA2YUxmbk04cDlPdlRkNlhw?=
 =?utf-8?B?Q0s0NWYwdXMwY1V0TTNwV2VDUkdRSXA5bEdWTHgyUk5MSTQyK0YwT3dLN2Zh?=
 =?utf-8?B?UXQwUFFRbS9xSmlrbm9ENVhpcm1rM2dHTDZaK3NXR2crQnIzUWVaSG5jZlZI?=
 =?utf-8?B?Ymo0MUpaZmhjNFAwTHBnSS95cE5QZ3E0Q0NEaVNNZnM5RnNlSWlGb2dhWTR6?=
 =?utf-8?B?QTJnN3NWbU0xMDVVbHYrQ1U4SWJWVU9wcGkyM3RMVmlMb08wWmlyTW1xVHlM?=
 =?utf-8?B?V1FsVVVVS2tiUS9lSUtjaTZPYzczbW0xQXFkLzdpYmJGaGNPRC9jeDFXd1do?=
 =?utf-8?B?Nkdnc0RYWWpNT1JiK0tJQjQwV1Q2T2FFSjh1TEJmOVNWbzFGWVloTyt6TWEw?=
 =?utf-8?B?aUFnbVl2eFREMGVQeFdqOUFGWVNvN0twV0tqOGkzQVlWbGwyTEZiamJMYlpq?=
 =?utf-8?B?MUg3NlVIOEhmdk9QelJQTGltcmxHQ21vZDd4UzZ4c2MxeW10bXJEMlhvb0ly?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 013b9cea-f03e-4f48-d1a2-08da9737a8f9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 16:30:54.2317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DWS0gDAWUXbXDXn6QbWQyraSvld3oRqfYJFadffXpoH4pYXpHcOuA/453nJRb0nBsFjsuyA+WhQ2+3GtQHy7aWWwFIsdQUR+lGsRH7dpuSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663259465; x=1694795465;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cu4VrjAAKPW3hoJ8IJrfzgvaDkK3CkVuld2n8P3lYcs=;
 b=nX1NE3pCBsP8IYFqzTo8x5TiN0lDgA0yfkHW8Vl69Kg4TcCEtPn+CVpN
 NmfQCgJ5QGs5Ipc1Gab9oqWrUmB26sHAOinYR12An+VTZcM5b32gSdPST
 6PmuUTX3qWl0cbfvY2AFFE/VcDsZLEfPAD/z9hylpCDO6QGBvV8k333RA
 tfCc698h0QdkgcoNC2r5lXA4WUONHBLXT1tjD0wSKVd5oHJkk5ijygeuU
 dfKXDf8V7cjhlFUCEd9kNxqPYQ5qOvS/ev/9JDuLWMZrFGX0CrtViYHOs
 X/1KUXO4uldskzqZ615dhJqkhXUHea1lEvNhIFdAeX3psyPJsc+jL237p
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nX1NE3pC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH] ixgbe: Don't call kmap() on
 page allocated with GFP_ATOMIC
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
Cc: Ira Weiny <ira.weiny@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/15/2022 5:40 AM, Fabio M. De Francesco wrote:
> Pages allocated with GFP_ATOMIC cannot come from Highmem. This is why
> there is no need to call kmap() on them.
> 
> Therefore, don't call kmap() on rx_buffer->page() and instead use a
> plain page_address() to get the kernel address.
> 
> Suggested-by: Ira Weiny <ira.weiny@intel.com>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Reviewed-by: Ira Weiny <ira.weiny@intel.com>
> Reviewed-by: Alexander Duyck <alexander.duyck@gmail.com>
> Tested-by: Gurucharan <gurucharanx.g@intel.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> I send again this patch because it was submitted more than two months ago,
> Monday 4th July 2022, but for one or more (good?) reasons it has not yet
> reached Linus' tree. In the meantime I am also forwarding two "Reviewed-by"
> and one "Tested-by" tags (thanks a lot to Ira, Alexander, Gurucharan).
> Obviously I have not made any changes to the code.

Hi Fabio,

This is accepted into net-next already[1] and will land in the next kernel.

Thanks,
Tony

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=03f51719df032637250af828f9a1ffcc5695982d
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
