Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9C477ECDB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 00:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86BC083B3B;
	Wed, 16 Aug 2023 22:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86BC083B3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692223910;
	bh=4sN5LYpeBC3LnY6oKFCPaWsVgCWBsO7B/iNJcE8iL/s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uY9X6SHlJpa3O3N3vOOOUxTFNso6oHpheQNPqa7P6a3NembhhZfyP1t8wUXq9HUBn
	 oVoTzwD3UnLXiqQ40Ue1BNYhErvlMAz9w3BM89b/hG9ZTKKTx3OJvkNoDLRZO+pxwm
	 mgHVYpIU/KRKzW3yy5B3R3MKNoUYGKL8NQm6h06tzG3RezsiL6DMFMrpSLjCUB02cj
	 z82tnvN0CFugHok9rZA0YM3LqEYutEy3QQzvWts0XuqXkmrPKfAsFf5BWoLps85cfs
	 Ztx2VIakUz+HOA4BKfhZCIgDVXXymSLBjhP5GhQZat4+4gmybSA5tVEzF1dDvYLnMk
	 ktjK39KjTNwhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7PRsgv3b8PjV; Wed, 16 Aug 2023 22:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E880683B30;
	Wed, 16 Aug 2023 22:11:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E880683B30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9DA01BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 22:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E70083B3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 22:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E70083B3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYfArMw_z85w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 22:11:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEF1A83B30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 22:11:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEF1A83B30
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="439006185"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="439006185"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 15:11:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="857968614"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="857968614"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 16 Aug 2023 15:11:40 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 15:11:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 15:11:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 15:11:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UTBSb8q7RtY5NlibscjEnNZoCFKEFqYqpVBW3YAK/pN8YEk8QjLr6sLnHKskzqsayTdJySa09rvyqzlCAxL6rvsnb4ArCB2aWDouNZ+OB7dKv6Oxdt8fsEXMHfXTjH7QR+SscPkcG3i285i5sVh1/Ge0+5Nilb44uLuDTFBLWN5hzImm5eSaEYaSxrw0eSyN/+6jkHJSRAZyeTaBZdlj7Tw4H2opaU0syiNtnLQUjRmMA1pn/BWoTSavz0NviPS00jmDiwUuTexIKcme759l7L+9KcFYI6p60Qh4X/F03M/L4I0G7cSKz92/UvT0QueizgXD6CWhi5Wv5sser5Ckkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=juJhSVLKlY/sD71WosKOG7HYExEB0LqDxuhPz2B93TM=;
 b=gRoo8osuKt+8JVgxTO7lVND8+YPYcWdTvAGF2C16Gi7yL/grBW4fDsN4C/vDgQG6b4g/tasfCjP6LUTRCHjf6VfMHdcZnj2XfJFIFkYmYcK+Go2ReZhTQ34rcci0Yt8TsZnmkwMAYt3JoBAKGtwl3H2g0XOOZpLNGaffzigmnJkAPqugRQDgMGnT7ME+WXDZTKVrb9njX7FeNIS18/d7szdzlfN2BozyOWqGZEsmjrHUW8HkR8nwg/D309ZYmw23puVTk+WOTt9QjMVRzKMz99exwuZMZg2YWD9qQTGCE8ftIkojoCVnfyjexJHkVsmCkpoNjmm0h5YSXvMEs91dnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB7722.namprd11.prod.outlook.com (2603:10b6:610:122::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 22:11:35 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 22:11:35 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
Thread-Index: AQHZz8jhVFuZq31Z2UWMsYzGWY4gKq/swHiAgAC8+eA=
Date: Wed, 16 Aug 2023 22:11:35 +0000
Message-ID: <CO1PR11MB5089398AE22A0E476FC15D03D615A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
 <20230815223551.1238091-4-jacob.e.keller@intel.com>
 <546e415b-d34c-f4e1-a8f5-e3c13bf03cdf@intel.com>
In-Reply-To: <546e415b-d34c-f4e1-a8f5-e3c13bf03cdf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|CH3PR11MB7722:EE_
x-ms-office365-filtering-correlation-id: 2472d098-55da-4b50-e541-08db9ea5c156
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rxNApXK1WZTW0SOKNG9bG2NFDzuW3HltLCfCEE2gaKgHrdj43e3vpXoqx85Dv77xGu13ljSR6cp5XE5rBsQqowBmYJF+nihSAUvxU+EGRw71J0bFTAavyAkvdWRlWEBHDtmGcRUh0SEFpohMWYSQtnxXfFjZZ4oOP1/9gMJEyx7NmDlTjTA3EL77Hmr9QTpWt9FSImqM+ryQmolWyhkoxK1w1hJCPGJwawedf3678mro8SDes9kkvKsIFBkZWI85B78BCJs8Pv0wLUC5CpGPVBk11KGommiuAXVxDSpHpVrxWbrYe9nWRumtdJXO4dvEHjM2sZi836bdLNqqOPhD9Lx/2C8cB3BdGHaEUX/0gmuF83mwPnfoUrRjKwYJGTwwOYNZOhEl0LM3LbgIHNSTrTux2CEM84E/TszAkSSCOUqhRSxfUNvHvcILxaic9doukezH1Tc1BS7Dvd5vKc9fbjViiVK20K9YXwoSVuz8Ac13ZsPphsk1pF6RJ0KmnclaCRDMFYep6Qdk5X14RtPwLjwajwU9A7Mq+d6j4kb8SvnQzPfMQO8cWPVnP6SY7F470QYAWxgqRk/RYYCW4Vpf049Kqm17BXyHI3/DMKre4+GBYMQYbK3B8EN9lN7rq3AW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(136003)(39860400002)(396003)(1800799009)(186009)(451199024)(33656002)(83380400001)(55016003)(54906003)(66446008)(66556008)(64756008)(66946007)(76116006)(5660300002)(66476007)(316002)(110136005)(26005)(2906002)(82960400001)(107886003)(53546011)(7696005)(6506007)(9686003)(71200400001)(478600001)(122000001)(38070700005)(38100700002)(86362001)(4326008)(8676002)(8936002)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SDY3VklIQVlxc3BHS0VSSzdsVGgxUU9UZVR3bzd4SFVDaU5hYklGeHBIbmEz?=
 =?utf-8?B?djdBMlphKzZzUEloNDNzMlFxMFN3UHZoRktwRzU0Z1FuY2dXTHN3VWFJMUMv?=
 =?utf-8?B?T1N0bjZlK0JGVWQxbERIU01mRGhDYUE5aW1ma2V1ZUcwYnBscXBWTE52aHJk?=
 =?utf-8?B?MDk5WlJaQjJGWnBaQk5WWnozQXFUR2hPMVEwU1lRWWhObGU2TkxOa1BHb0dt?=
 =?utf-8?B?d29ZUGxSakNPd25GMEFLY3phdmhpY3MvZ2k3bnJEdHRpT3FoK0wwL1Z0Nkdn?=
 =?utf-8?B?UVhRU3oxS21uSHlxS3FRSU4ySkY4RkV4dVJwc2xnYmg0TUN1NUdjYStFWi9S?=
 =?utf-8?B?RTRhZmQzaG0rTU9WeTVUTVZsQ0NWUTExR0Q1dTBDTExNU2htbm4vOWdVY3g2?=
 =?utf-8?B?bk1yVGhXRDBGcVJMOEJERGV1YkpSL3FGVzBmWUdHNVVUZ2l4WDVDeVpaeXVV?=
 =?utf-8?B?c081K2IzVTdUKzZHdkVQd2ZvR0Uzdnd2QmdrUW1tR0d4bXZ2dUZxZ2xmRUFS?=
 =?utf-8?B?U29HN3U5UFZCdmo5WWhkQzhlQ2hCWU5rZmh6Zm1VcDlrYXdJNzdSOHlJSzlY?=
 =?utf-8?B?RzQvVGJ6bEQyMEJ6K3drRVFlQ1JUelR4SXJ1NFFwb3VBSFB6Q0ZQRTZid3Fa?=
 =?utf-8?B?aVVDdlB2SFV4WkdZZHVnWjVtUzdWVGsrKzZNdlc0d3lGNDBuTzhvcFFxaUxL?=
 =?utf-8?B?QURUdkJCQUMvOXB3cWp1VkxpRVppMzBXWFNONVBJYnBGVFZ1OG0reWs4Nlpx?=
 =?utf-8?B?d0g4eS9ocmRTOUJ3ZWdVZVAybkUveE04aVBwQ0IrVVE0Z2dnamZlRDhxRTd1?=
 =?utf-8?B?b2JlTFMwVGNlU2pqZ21LekNwQSs0Q1ptM2dpeGc5cUxHUzdEL2hBRWFjQ2pB?=
 =?utf-8?B?a3hPWjZuSG5tZXV0dzJRNHRzcWZnY3ZyMDI1K3JGVVZvQU1XVmtRL2JxTkVH?=
 =?utf-8?B?ZUdJdU95czhlbElKNXdTZ3RGaE5DbmhBMGFsUm9TMGVkM2NjMU5ZMUZYRzlv?=
 =?utf-8?B?blJ6ejJrczd5anRGWllmdGxYajZ5U2F5azlKck81Y1ZCai9mTGgzUDM1azBE?=
 =?utf-8?B?UUF2TStCRVJZM0JONThRODJtUnJTeTdta0d1ZEoyNU1zOGRmUC9DUDVlK3VI?=
 =?utf-8?B?N1FJa1E5dFZjQ2hkRXRWK3J4djdmaFNzWktDcjFuVkdSZmptMlIyTHdFbnVu?=
 =?utf-8?B?TE1yRXEybDA4Z3JnV2UzV2U4VDM0bTVuRWFvVjcvTmFWUFVxcWlES25DakVN?=
 =?utf-8?B?TnVMWkhROU5jQW1wZ0o0S01lV3BTQTBZcGs2L3RYcEl0OWg5L2Vrek9KaXpn?=
 =?utf-8?B?NkhtV2hBREphUnI5cHN2OVpYL2twbE9wMlVLUmRuN0U0eSt2b0d1bldBNHEv?=
 =?utf-8?B?STVzQXFvU3p3dlhNbHNqOFN5YXhPcTdnK0xKamZvZG50MzlpMFlXbnRWcG9w?=
 =?utf-8?B?WjNrcWkxUi84MUZSZnVBQXIvK2tYWksxVSt3Z01Ka2VSNVBlcGFVSkpCMWdV?=
 =?utf-8?B?N0h0QnR6MWxrUlpnSG0rUkRlS2cwWGYwYS9hZEY3Qkp6SU9FMWUxQStrYkp1?=
 =?utf-8?B?Z1k5RDJydkZoN2VjWm1XcXZGWHdwbHg5MnNMWVVYMTN0U2RxaXU0aUVQZWVn?=
 =?utf-8?B?cGxzdFQ5NkxrTkE0L0FmS0xPQUFtYXFVdkVWMEpiM0t6dDU4eTQ1SzhydHlK?=
 =?utf-8?B?bkVxSXE2QytObnpnSEpnYXBlRnRyN1hUd0g4TmRGbEJiYUVlYlA1VUZhVm5h?=
 =?utf-8?B?VytUTnZBRWlneEtRNlljYWJJSG1Nc25QMTI3VzNBOUxaempXc0dGMGZIZmpV?=
 =?utf-8?B?TFYrNEJGblFhQTRLZ3hocHYzTWNSS1ZKMjRvWnFuVWpCdWY3VC8rTEs4SDlW?=
 =?utf-8?B?L1NrMG5PaWNFZC9EdExUUU9VMFhFUU5GVVpncnJDSDBoRnplcnBEVVl0VFFu?=
 =?utf-8?B?Q2pJZWh1MWNPS0VrUk5LM29SWkxtbU1hNmNVa3pRVURKRDFpZ01hMzBiMlp0?=
 =?utf-8?B?Zkg2WW96eERIQTF0ZVVrazZ4QVVoZW5ON0F5blRkNDFPZDY2S3lTOUswbllm?=
 =?utf-8?B?bk9yaTJ5V1B0Y2NnaWMza0FkdU5PRHdlYnVjMUZCYXZnVHJCM21BczF0Ukph?=
 =?utf-8?Q?LSkxN59kib2MEpuoiFyXyk8CM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2472d098-55da-4b50-e541-08db9ea5c156
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 22:11:35.2970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g6j5F1iKRYoMLhyQwt7OVvGPc8Mfk6MjS0sUVGKq6/RDS8jz2bENoExDEDPDd5uK7KGzq2babQc8uO+7SCZgVYrjuaV0BEYub1djafp0vKw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7722
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692223901; x=1723759901;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=juJhSVLKlY/sD71WosKOG7HYExEB0LqDxuhPz2B93TM=;
 b=oGVNA7uAaKVH3YeUxp2GqfElHKf3XshtlnNNKZEIt9RVlkD3kciFyfvK
 tXJKoMqfwpsf1YQwWKD4qtDNviORfnDAEpFmoV7KYXOlvuOyEP3bgzPm+
 ExY6qdOhAk0P3ydfeF5XnWcgOzv3KEU2hvWT+oWqx53BCihOVHlG0TVVf
 zl8sge7muYUDjX/Z8MlA7pa7kb0/ltxccz7dmxwOcl3YmmsfoIF7ITejb
 DWr9Z97SQuZ546fp/DtLe66u+suDgckov0gnt+5/iC5B1t+u64oX8CxHB
 EssfbFQ3TiRGjBqIBXROfgtAQ5l2cGD4NbFnNQ6EZNQ+6B+yRN5d0nFMN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oGVNA7uA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Wednesday, August 16, 2023 3:54 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist before
> enabling ICE_F_SMA_CTRL
> 
> On 8/16/23 00:35, Jacob Keller wrote:
> > Currently, the ice driver unconditionally enables ICE_F_SMA_CTRL for all
> > E810-T based devices. In some cases, the SMA control access is not
> > available in the netlist firmware component. In such a case, the driver
> > will fail to setup the SMA pins. When this happens, the driver prints
> > "Failed to configure E810-T SMA pin control" and forcibly disables all PTP
> > pin configuration support.
> >
> > This results in failure to use even the fixed pin capabilities of standard
> > E810 devices, resulting in reduced functionality.
> >
> > To avoid this, check the netlist for the SMA control module before enabling
> > the ICE_F_SMA_CTRL feature. If the netlist lacks this module, then the
> > feature will not be enabled. In this case, the driver flow for enabling
> > periodic outputs and external timestamps will fall back to the standard
> > fixed pin configuration.
> >
> > This allows supporting the software defined pins on a wider array of
> > platforms.
> >
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Overall it's a nice series!
> 
> > ---
> >   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
> >   drivers/net/ethernet/intel/ice/ice_common.c   | 46 +++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
> >   drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
> >   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 16 +++++++
> >   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  1 +
> >   6 files changed, 72 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > index 90616750e779..82c4daf0a825 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > @@ -1367,6 +1367,7 @@ struct ice_aqc_link_topo_params {
> >   #define ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE	6
> >   #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
> >   #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
> > +#define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
> >   #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
> >   #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
> >   				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
> > @@ -1403,8 +1404,9 @@ struct ice_aqc_link_topo_addr {
> >   struct ice_aqc_get_link_topo {
> >   	struct ice_aqc_link_topo_addr addr;
> >   	u8 node_part_num;
> > -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
> > -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
> > +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575
> 	0x21
> > +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827
> 	0x31
> > +#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX
> 	0x47
> >   	u8 rsvd[9];
> >   };
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> > index 2652e4f5c4a2..9eeda3f5aa75 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -2503,6 +2503,52 @@ bool ice_is_pf_c827(struct ice_hw *hw)
> >   	return false;
> >   }
> >
> > +#define MAX_NETLIST_SIZE 10
> > +/**
> > + * ice_find_netlist_node
> > + * @hw: pointer to the hw struct
> > + * @node_type_ctx: type of netlist node to look for
> > + * @node_part_number: node part number to look for
> > + * @node_handle: output parameter if node found - optional
> > + *
> > + * Find and return the node handle for a given node type and part number in
> the
> > + * netlist. When found 0 is returned, -ENOENT otherwise. If
> > + * node_handle provided, it would be set to found node handle.
> > + */
> > +int
> > +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8
> node_part_number,
> > +		      u16 *node_handle)
> > +{
> > +	struct ice_aqc_get_link_topo cmd;
> > +	u8 rec_node_part_number;
> > +	u16 rec_node_handle;
> 
> I see that you are using separate variable to 'do not touch'
> @node_handle param if it does not need to be updated.
> But perhaps you could consider to just pass @node_handle in place of
> @rec_node_handle below, and have less code?
> I do not see any non-null usage of the field anyway.
> 
> (rationale: our code is so self-similar that I needed to check wheater
> you are basing-of recent changes by Jan&Karol or re-doing them ;)
> answer: we are fine here :)).

I can look at that. (I mostly took this from the implementation as-is in the sourceforge driver...)

> 
> > +	u8 idx;
> > +
> > +	for (idx = 0; idx < MAX_NETLIST_SIZE; idx++) {
> > +		int status;
> > +
> > +		memset(&cmd, 0, sizeof(cmd));
> > +
> > +		cmd.addr.topo_params.node_type_ctx =
> > +			(node_type_ctx <<
> ICE_AQC_LINK_TOPO_NODE_TYPE_S);
> 
> I would FIELD_PREP() here
> 
> and perhaps convert @cmd scope to inside the loop, that would enable = {
> .addr.topo_params = { ... } } declaration


I can look into that.

> 
> > +		cmd.addr.topo_params.index = idx;
> > +
> > +		status = ice_aq_get_netlist_node(hw, &cmd,
> > +						 &rec_node_part_number,
> > +						 &rec_node_handle);
> > +		if (status)
> > +			return status;
> > +
> > +		if (rec_node_part_number == node_part_number) {
> > +			if (node_handle)
> > +				*node_handle = rec_node_handle;
> > +			return 0;
> > +		}
> > +	}
> > +
> > +	return -ENOENT;
> > +}
> > +
> >   /**
> >    * ice_aq_list_caps - query function/device capabilities
> >    * @hw: pointer to the HW struct
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.h
> b/drivers/net/ethernet/intel/ice/ice_common.h
> > index 2250a9c5f61e..f7178a5686a5 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> > @@ -94,6 +94,9 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool
> qual_mods, u8 report_mode,
> >   		    struct ice_sq_cd *cd);
> >   bool ice_is_pf_c827(struct ice_hw *hw);
> >   int
> > +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8
> node_part_number,
> > +		      u16 *node_handle);
> > +int
> >   ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
> >   		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
> >   int
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index f29ff54383b5..4ac8998cb964 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -3989,8 +3989,9 @@ void ice_init_feature_support(struct ice_pf *pf)
> >   		/* If we don't own the timer - don't enable other caps */
> >   		if (!ice_pf_src_tmr_owned(pf))
> >   			break;
> > -		if (ice_is_e810t(&pf->hw)) {
> > +		if (ice_is_clock_mux_present_e810t(&pf->hw))
> >   			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
> > +		if (ice_is_e810t(&pf->hw)) {
> >   			if (ice_gnss_is_gps_present(&pf->hw))
> >   				ice_set_feature_support(pf, ICE_F_GNSS);
> >   		}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > index fd19afaf9c85..bd3f32bfbc78 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > @@ -3018,6 +3018,22 @@ ice_get_pca9575_handle(struct ice_hw *hw, u16
> *pca9575_handle)
> >   	return 0;
> >   }
> >
> > +/**
> > + * ice_is_clock_mux_present_e810t
> > + * @hw: pointer to the hw struct
> > + *
> > + * Check if the Clock Multiplexer device is present in the netlist
> > + */
> > +bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
> > +{
> > +	if (ice_find_netlist_node(hw,
> ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
> > +
> ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
> > +				  NULL))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >   /**
> >    * ice_read_sma_ctrl_e810t
> >    * @hw: pointer to the hw struct
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> > index 4e3c1382c477..3768e7a01920 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> > @@ -195,6 +195,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8
> port);
> >   int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
> >
> >   /* E810 family functions */
> > +bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
> >   int ice_ptp_init_phy_e810(struct ice_hw *hw);
> >   int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
> >   int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
