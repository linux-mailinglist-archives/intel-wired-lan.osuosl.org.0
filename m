Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D443895BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 20:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02D9640EC3;
	Wed, 19 May 2021 18:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oV0x1lJjilNd; Wed, 19 May 2021 18:47:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC1564055F;
	Wed, 19 May 2021 18:47:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 359A71BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 18:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2390D40152
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 18:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7FM0A4TAyDoo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 18:47:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C9F84013C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 18:47:01 +0000 (UTC)
IronPort-SDR: fefFnqjQiX2awntGNz+J8BWz/s+GFymGavFXDdRJmTN6IB0KUxE6QC8qYmdEVFn0Wa2Qrd+j27
 H4mesBy/P7pw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201100259"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="201100259"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 11:47:01 -0700
IronPort-SDR: OcJH8obxMXtDc6JEOE+/EhKeO51REM2h5yg48jAIuHFbVknhrQpdMiojJdBWE3KNSG7vGrcI4a
 3l25gfrFREyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="542804465"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 19 May 2021 11:47:00 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 11:46:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 19 May 2021 11:46:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 19 May 2021 11:46:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eco9gk42sdUfkqXnyAhhikyCgXtfEO54FWKgbUnfbLfuNSDukxXa35YXFulgpgjcDUPJnBpcXE+lh1OYIfqPtDIMrqya94ySxz3s30fS6xJQU0/BWLeoFF8ixgf/5v3Jq9SIPa/QMQEu9G2E2n2xaizKI/MzGeyhbhb0bSww7hXqB7KrCp1+N136VQAfTnBK9R28ihBhFkz7CQQK7g+IQmGtBYl+Gvdsg82GRR9LyWWPGGesmVWTG0nvF+DGGhrPhu8/xDrPDdgCPgkhGvdU46CajctTUOV+fhDvDVWQ+hwhT4SvzA+9WSCiTNf4qCYdripunijEBjLxUroU+r8SJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q1ZKrAJgNgcB4bZk4wzLap2aGSwLTWgFCK2AIhIxfRo=;
 b=fZgECNaD8hK+owsQ+W3tkMdQboUbOqaZine6ItfspTOiwIrPZHdAKk81s3mOz7ZgFiF9BZv7b9s7taJHyyTae1u/MuFr7Y3yFenH/sdA5JT/BhhrVog5IHeqiSdAe450ZcWZzczrqiXJmlBYbp+jdnK2a99e1cxXtAN+2FnjLosDgTfwWal6mMvpOeHgDiQ/Pepi9vozD76o0Ef1duNmSxSL6lHsZyz+BBkyc7JsW7ZRmk9SqtHlzpYyxdVoRaxYgthJMCc6pYAWEa/i/1OZ/eIyEnMsyX2Jgx5ZdKhDXPKD+oA6bEIdmYDOelCh6JML+CRg24bWYwgxhi/4cDvP2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q1ZKrAJgNgcB4bZk4wzLap2aGSwLTWgFCK2AIhIxfRo=;
 b=ZQeXHhYDsFdfd90xE+84BOXqD0SFwu2NCNAQ4lSEl+0tTeCHBXXWBVvgeBDi1fEcNbAsM4hXhN74K62Hehfn50XqEC7fHK/HP8TN+B9WUizkSs8KlXeyFO/0S2byLSShxdLgFH5r/0Khad9LdoVYJa5c/WsXBmHZGurIEwaBwc0=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4622.namprd11.prod.outlook.com (2603:10b6:806:9c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.28; Wed, 19 May
 2021 18:46:58 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4129.033; Wed, 19 May 2021
 18:46:58 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kurt@linutronix.de" <kurt@linutronix.de>, "brouer@redhat.com"
 <brouer@redhat.com>
Thread-Topic: [PATCH net v4] igb: Fix XDP with PTP enabled
Thread-Index: AQHXP+31jf8iovwjlUioKxpgY9kwLqrS/w2AgBfobACAAFgEgA==
Date: Wed, 19 May 2021 18:46:58 +0000
Message-ID: <e4568dc225edd00122b35be37cef9fac68329508.camel@intel.com>
References: <20210503072800.79936-1-kurt@linutronix.de>
 <20210504102827.342f6302@carbon> <20210519153418.00c4cc42@carbon>
In-Reply-To: <20210519153418.00c4cc42@carbon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: linutronix.de; dkim=none (message not signed)
 header.d=none;linutronix.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22e2c5b8-07a1-4636-5fbf-08d91af67b59
x-ms-traffictypediagnostic: SA0PR11MB4622:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4622D7E8EC15D3EA38A775D0C62B9@SA0PR11MB4622.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0PROT2VOUXaY8lvOQKxceCl1Mw6PwH8k/kTvREsy1UgaNkyqdMalZ5CDu7ccJs4BHKHvSbtNbo+JbyeQDqpFv2NiySr+XBm3E/a+z/JzyWAduwZCAP57+WatHzpbtwvlZpnnxDhxv5O6ZTlNb9HTxg73Axxw4oIeyzpAS2q+QXLTHRYemNqwzD/F49Xl0CElfbrtqVZlLp/JQ994BHOYI5lMscQRZvuEuHv42by0aJo7Q+criy/CtOpSdleY8a8Z+GNVgIKWElUpifjj/CytofcOGIvAxi1m5JwGrX7qrdzO6W7W1NY7KrGhzbbWlWB2WpZ7OCYv7xMRsmjo6VQIEzeEXBTKYVVQcm2JZhl6uQsL0dQI+JpfMsYYDRNiU/GkrNmRZFNbpsMwfTXD+v3Oovs+Sr62OuHDNPmH6m+ITaeJp6MDcRogrsZF6dHRoW4Xtdw78LL/4cF1hWkKVWsmiTMQlBBIFbCsN83M65ShqWhPZe3y82d2iLQNWyae4BJRvXGgL9TFZbQtz65D48KmE6Bw2qk1ylkhe33vQUl2wmZ9jypGX5gn8nW85HT8d+ZdzwtaCGXM7yOz2hFxIQXz4K7WzHdl3aNJeGsw6pZjsqA16Fwcv6j6FBW0v92YtCbGKXtCKXP+xVHuXB/sg/4ELWPjy9EMwrSv79x/Ts5MAc8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(376002)(366004)(396003)(136003)(6512007)(91956017)(76116006)(83380400001)(26005)(186003)(54906003)(71200400001)(6486002)(110136005)(36756003)(966005)(478600001)(64756008)(5660300002)(2906002)(66476007)(316002)(66556008)(66446008)(86362001)(38100700002)(66946007)(4326008)(8676002)(122000001)(7416002)(4744005)(6506007)(2616005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?c2dEWVVqMi9kOStReHJTa0JRRmZIMlZhc1pHT1RvVnJvZW1RYk1WN2hBMTVn?=
 =?utf-8?B?ckw0amdmTkp3Z2orRlBybTZ6ZnQxKzdJcktGZWRnNVNRWnRnaXhJOFcrejhp?=
 =?utf-8?B?MG8rWW9oS2ZmNlIzWjhoWnp0d0tDazRRUzBzTVplWlozUHY0d2FNajZ4YVFJ?=
 =?utf-8?B?NjZjYTl4SjR0WUk1clpXbmtqejdERkVjMnRRSFN4Z1dpekhLRG1VZ3NuRUpN?=
 =?utf-8?B?Qi82QU02VElSSUlmVkZNamlzeDJvTDdWcnpWOFQ3NlhrVW9TN2xIYng2ZGJl?=
 =?utf-8?B?YjhtbTMwNk82d1JZUUJSdUtMcHoycml4RDlJWC94TExNUTE5LzJ2STJOM2Z0?=
 =?utf-8?B?TEVvbEY1RG83M1g4ODhKeVNSSkpYZWd0RkxRVUZNNzFyWEtDT3JsNmQzMVZW?=
 =?utf-8?B?VWJXN0VMdnB4NnFoSEhuaDdWaGJjSG53c1o1Ui80bEtrZW9KZWJTUnVCbEN0?=
 =?utf-8?B?V1hRWHNBSUZjSnhuUjc3WWdHVzFCQ05OU0VFaDNCSGtwenA5enE2SU9BU2Yy?=
 =?utf-8?B?dzgxQkxpN2JqdkVvbW01ZnhZdUJZTkRpTi9Qd3Y5am44ay9xdHRuODdZSjNK?=
 =?utf-8?B?QWRhRWlPam5hcGsyT1V4eGNiQjZRVEZCM2tEWE9HOHdiY0E0OEhDNlczYVQz?=
 =?utf-8?B?QUE1VEo5MlZJa2ZXaFlTd0V2TVZ6aWwyVVl3U083cUhjT1AvQmg3NWUzM05P?=
 =?utf-8?B?SkJSMWN5dVNNemRhbUxZMWVVR3BNN0k3a3dKTHRCTEc2WVAyVjc4WkhYR0R1?=
 =?utf-8?B?VmwxMFF2cGNVa3JCNWZPMjJKRmpPeDBkK25MbExMWmNhekJ0U05KeUZ1YXpm?=
 =?utf-8?B?REZ1R1dKTmdqQTZML1lVamJybFM1azlaNElIMXQrendpRXVid0pKcmcyR2ZR?=
 =?utf-8?B?NWt3YXlaOG45d2JNQWpwQTFqcTlaWVJhQ0lGM3hmMUxBR3Mrcjhacy85bHN2?=
 =?utf-8?B?Rk9rSlI2a2hJVFlWendaVFkxaWh1dVZhNEVEWGdNQS9DZ3lkTjNETTVhK3BE?=
 =?utf-8?B?aVVsTDlhQ29scGpFd09LTzhyTGZudVZmMlJraUo0NGkvS3dJM2NSWVV2U0tH?=
 =?utf-8?B?d09HMCtLUTE4K3FTWm5DMmI1b2tQTzBqcnBjOXloclByR3dVc0dXUE5LN1Ew?=
 =?utf-8?B?OU5WWmtCUk02RjV6a1NQdldDOEU3TkI5S0ZJd2RZc2Z3UXAxMmNkcHhvNlRV?=
 =?utf-8?B?UU5NVmk4em1qVGNobmNJWUQySUNIWExVZkh6cElvMWlwQmdiMnVFNmZGMlJ5?=
 =?utf-8?B?UUR1UVFVeUV2MlNyU2h6dGl5QnVmTCtaTWdpYjlXMi9RTHE0M1FKWWpvczRy?=
 =?utf-8?B?ekUwN0Qwa0RzeEZQaFBETDBpWDhvUlF5TEFWSUxmQS84eFp2ZTFBTE15aE9s?=
 =?utf-8?B?ZVNWbFdmeFV3c25pbWZ5Sjc0RHgxaXkvcTYzWXlJSjBxUGJwMmxTT1JyVzVC?=
 =?utf-8?B?ZllVVUdJckl2VVBaUVVGaDcxeUlSS1FIUFp6NHNWTEkvTXhrVjA4QVhuZDBO?=
 =?utf-8?B?OTN4WlRiVS9kVzc4VkplRjhhNlJDQk1LeHloZCtiMVg4QU9qekt6WDJYcGZE?=
 =?utf-8?B?bW1xYWYrS2JlNEljYnhiWHlMeE4xamJrSG5LZVBWK0IrdURIejJNemRWSzhC?=
 =?utf-8?B?ZUcycnVXRk1CUGtmS2RMMUtkcjNYSEVrQ2JTSXNldUZsTVJ4SkR0dWYxMmJh?=
 =?utf-8?B?MlF0WGFvYUdiVkp4dFZsV3EwbEQ5UERYS21OVHlOOWg2QU1mOHZpR0RyZHcw?=
 =?utf-8?B?S2E3K1J3dFNJWTNGVnhrbWx1dGEyUVE4MlFQNzduL3RSZTlvNWk5djdJbXI1?=
 =?utf-8?B?djc1QmUyeFgxNzB0bHM3dz09?=
Content-ID: <8C795B42C6FE8A4BB1DC4437D2B45472@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e2c5b8-07a1-4636-5fbf-08d91af67b59
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2021 18:46:58.2368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G1Ien1+fdCoMszqh2ElE284lR/On/tjlb+q+s7G5eOWGSbCrbt9lof0AOuA1nwwoI/Nk2D/+PUQ7XcQ7yJmOBcrHADl4piTihSQjGf/wEYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4] igb: Fix XDP with PTP enabled
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
Cc: "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "ast@kernel.org" <ast@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "tylerjstachecki@gmail.com" <tylerjstachecki@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "lorenzo@kernel.org" <lorenzo@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-05-19 at 15:34 +0200, Jesper Dangaard Brouer wrote:
> Hi Maintainers,
> 
> What is the status on this patch?

I'm awaiting testing from our validation. They expect to finish by the
end of the week; I'll send out the patch as soon as they've completed.

Thanks,
Tony


> I don't see this fix being applied on git-trees net or net-next.
> 
> [0] 20210503072800.79936-1-kurt@linutronix.de
> [1] 
> https://patchwork.kernel.org/project/netdevbpf/patch/20210503072800.79936-1-kurt@linutronix.de/
> [2] 
> https://lore.kernel.org/netdev/20210503072800.79936-1-kurt@linutronix.de/
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
