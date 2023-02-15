Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A96A6988D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 00:40:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 779AE417E0;
	Wed, 15 Feb 2023 23:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 779AE417E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676504449;
	bh=0fUYe+Fztd0oKCOd7yvbHEOqnhvIMD1Lm/uvQNkTJ38=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HWiJvw3ZsIS/r+ceyXDu1echkdzcbNSRk2Y5oHBFVGW5yMWHqm5n8lbmT10ABfnMB
	 RFkLi0KL3B0mBftozKZzWCXimmlerPdsK5TU4tBdaKXJ6D3cln5g6V7k6oV574uVMI
	 aV2n4Clq7yK6nKzjgeaYvdSr5dFduLzOnUWty84oKAyzb9FzmEdM+uYuoVmVoGeMIu
	 GdsRYdXWI2+IYdbFtulXIkYosfSnUDHmLFApH1wMKUl5xyYcncciNBs6r8NLotJ/C8
	 D9vmnmVVonP2d6FPUPg9PLif39c5cEDlT3rtKNyigkW/hXPIdIeKMP/kBtbDLGVwnH
	 JV5eWdC0jJDbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ET25AkLaG4ba; Wed, 15 Feb 2023 23:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10085417A8;
	Wed, 15 Feb 2023 23:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10085417A8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A510C1BF35F
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 23:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B9BA81FDC
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 23:40:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B9BA81FDC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5G7Md5b_-M_u for <intel-wired-lan@osuosl.org>;
 Wed, 15 Feb 2023 23:40:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48E9481FDB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48E9481FDB
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 23:40:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="315240348"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="315240348"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 15:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="647446425"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="647446425"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 15 Feb 2023 15:40:38 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 15:40:37 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 15:40:37 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 15:40:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjz+Qe8lPZGwonlvv2YUFPExYg4Ir94av0tJFjZ0EPDFJgnY4iS8C+bLLorSlgF2L5YA9E8k3AWDHjf0UiZZXEWKu6r8/cjpEKIMXY8p3sDsQvFpdVjJFalUnwNC+cr0I+VqQD5ZQBMSYPXez++VKUmqZ7syl3J9K46KL7kE5tclKfx2j7kYztCVEq0JUt3LFNqEOFUDn8mCajsLJzhrrSQReJ04U2e0yYBaZ4+r8FZ0W4mMDJ5WEV08xoXaovZ4ldJSQ4jkh4b3lrZkTo5uGx4PT5UE05Eo0G0xKHFDGgvO33NDo7AkDCFlpVVhZTos0ChzhMYiDWhe+SbsySIROw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aUHcCsKfn5wKsaA8m+B1/rR8pPd8d2RlGxjKLEXUJPs=;
 b=KtJlNDD+HcqmzftbCNWAR+rQYLyvfWd1BGE5wuBuX9ESHBTZeSjXSe5i5Bg1Cj9BQ9B6cyIuvxO+XkXRZ4eoTAQcM8+Xsl8RU/fsMk4wkQs+LY+D4UGiAh9pp1YGH8i0FIjCeLvKZ26rfR4kVMYT1exzNpAYYAjEFmtDaYEpwNefGznl2CyQNgP6pt5D5k86oocLAFmadPESyTpFT3Qdw1ZH++yIRyei1piC83MaJT5rjIS5mFzbbi5ivMH8UKSdWJ6disRAp+bnS4EtHM8bmSvccrDe0+2B2Z9l0lMb+v3Akorci3CBNZXRwe4f4oxkiB+ngDP1fBvbNrjgui98XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DS0PR11MB6469.namprd11.prod.outlook.com (2603:10b6:8:c3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.19; Wed, 15 Feb
 2023 23:40:35 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d%5]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 23:40:35 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v1] igc: Add transmission overrun counter
Thread-Index: AQHZO3i6rghUrM0IQkqGGpsrQCGUlq7QbuuAgABFltA=
Date: Wed, 15 Feb 2023 23:40:35 +0000
Message-ID: <SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
 <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
In-Reply-To: <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DS0PR11MB6469:EE_
x-ms-office365-filtering-correlation-id: a6f72fc0-c670-4f32-077d-08db0fae0913
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YuE6QIhvfExYzsXz7sSUBZN+dM5bDkvSfjLbbeHSFLpDKHLRXzjgtWKy7ikKUKST2o7bXl67cztZi4F4TRGUA/qYx4KUDVbM6bfBKTMhewAzg3d0JXdKqQUye/1fds2jUfMS9UpbrV0KCtnUk+/lm0xUXWpJj3sxlKGk8VsZRG+L797mQVHMvjv0UhDw3aeMplJH0ng7sTGKaPsSbtAlB+jhGqriK2zVXEL3rFT3vEZRSz1gZX+gvSoozaqRgyYtM/tQkjtGnqHb1hCUx6EWkLoMAVEJlp/sxIonT+lIE59DyOzKdyhAIHynkw+yvZpkxljWDSfmhG4pVCYjPrs6Ludy3YVFPvEY6Gur4VMsI/CzDKMQkWsirhe5YFTRnvKEGE18b2JMW1+0jF3nuV7cd5lPcOZN1hTt/LkX0bv5kFNF4fD1fsWrjGUqbfcl0LVExpKFmJOhd5SnW9kTXRryYait3aJ/chdhwiXEOvVAloGPBHfowqWzycvCof//+VqB5RpFKCzHeDykBBqWyKMoZ1OjVJldzEQy6RBCnxk01Z5by26LlXfVbueZuZn5sM6B8YQE+dC9Kq1bpcCTR4WjVBjTttm3K66RacVTsjgElnfqhuMn8Z9XARQBjQv8A4LrMTWXuXi5S/E1FyYrp12Pe3mHnWYBPUE/FVgWVRew1TUjZQAlMbDrgJZKW3W1qoUae8ctepWlRB/lsgWM8Xmoyg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(366004)(39860400002)(376002)(396003)(451199018)(33656002)(83380400001)(55016003)(122000001)(2906002)(38100700002)(82960400001)(9686003)(7696005)(41300700001)(478600001)(110136005)(38070700005)(316002)(6636002)(186003)(4326008)(5660300002)(54906003)(8936002)(52536014)(26005)(53546011)(66556008)(86362001)(66476007)(6506007)(76116006)(66446008)(8676002)(71200400001)(64756008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmZiY2RwK1lDSGpSRFhjcStDSmgrMnppcVprQ25SMmFlUDArOStCYWkxTFJu?=
 =?utf-8?B?SWNROVFDWW5wd0pVQjFsbzJDajIyOU9GZlVsdjlqcEx6dlZWZ2JlVlNmYlZr?=
 =?utf-8?B?TUEvVDhMNXRSc3R3bDNZTWluSTk0SjV6b2tTWVdrcld2ZHRBZ1Y1RzVWd1JL?=
 =?utf-8?B?V0pPcE41WnIwNVJHb3ZLWFpFS2xKRUNqQ3oycEZEYzhJU1hZNDB1WnhQR1J4?=
 =?utf-8?B?SWdaWWpsdkM3UUJ5bHZXU1ErMkVQMUpab0xmeUhhKzMzQlo3R09wb3VrMzFs?=
 =?utf-8?B?TUpUMjNMOTJUczhNMTdTaGt3S2M1ZWpUOTYyUUxxOWZPd3RieHA2cGhyaXVW?=
 =?utf-8?B?QWFrS0gvRjVVRlN1cEpsdno4ZlNwNFR6RUNhYVc2ZlNSTWNibkMrNWVFdFRs?=
 =?utf-8?B?L2NGeS9aN1Z2NzNlY1pTRktQR0kzemxUN25YU3V3YWxEZWF3Zy9WSHlTWGxx?=
 =?utf-8?B?eEMyZlZDTVQydmZUTEhzbGNZenNFZGFsZHNRWS9XbXcyY3pqL2pVVEpBbGFX?=
 =?utf-8?B?dFlHeEFuaUtZd05IRUdmSGpncEIwM2pITTJ0VFJpQlg0WUN4YzhDdklmVzFI?=
 =?utf-8?B?OTJBazlEZ25OQW8xSVM3M0FPS0VxN3paQWtqRGJpMmtjMGRlS3ZzcmlWaHV2?=
 =?utf-8?B?eDN2NHJnUEpMODFaMWIwTFFKaHordUJ1am9zSmZQZHIwVjBNREt6NEt0b3Qz?=
 =?utf-8?B?OUZTZmZVRElvYjdTK1kzRkROcEhQbDdESEpLRTJ2aTJpSEYzZUxMWnZibjFK?=
 =?utf-8?B?ZDVoM0xrdVYyY0VwZUNqNmhkOG5ESHBUL1JqdnhNR3YxbXc4Rnl4U1pYVCtF?=
 =?utf-8?B?blB6UFc0aWZKRHlmRWhjMGN2aS9KUjdXRGxNUmZpcHFKT0k4RnM4dW91RUtH?=
 =?utf-8?B?Tk1vdVYzc1VLaUY5M1dOV0M1b1pReW9xMlBpdjA2bUV2TjhpeEV1eVNlY2dO?=
 =?utf-8?B?TWZFbEtzSHFGcEdIMGErM0h0eE1UR1B1ZXU0K3hJYlQ5NWw3TWFVbDR3K2Mv?=
 =?utf-8?B?UC9MdVNRSG5tSEoyeWwzN2FUK2l2QlNZSlp2M0N5Y1FiUXhmSFZ2amtYUUxt?=
 =?utf-8?B?OHp3TXZvcitKbVFiMmFtSVFISlc4ZThJdkI0cGh3NCtickg0OW9CMXdhOGVV?=
 =?utf-8?B?RTRydEs5V1A5VE44SGp3bHF2ZjBlVDV5bTN4amJraXJtOUcvY210T3p2dXlT?=
 =?utf-8?B?Z213VmFKMnM4SlB5bTBKb3NmWmoyenNmVHg5OWEwdmswRDY2TFN2NEYrN2Z5?=
 =?utf-8?B?RHlnMk9ndjRVcHJlaDNqSlljZ3lJRFdidDU2ZHF1djhua3p3RExzWVRmd3My?=
 =?utf-8?B?R25HRHY5UHA1SHlrWG5KaTlBWFZiRUs2SFJNS0ZqYW4vUmcwOWREV0Z6bEM3?=
 =?utf-8?B?TDNycmc3MTY1Nnlwa1RMT2htUzJ0WGVmOWMwcWVUYWhvT0tYM3RiMTZjSnh3?=
 =?utf-8?B?RGhkdTc3a0J4SlhiRmJrY2hQOGJFcUNTSmVjSmNxRlgwdnNIN1k5dUFndVpJ?=
 =?utf-8?B?VmlGcWZMc0ZRZTFhVTlUS3MvakVtcHFXMzFSVnNwNUxoYTRFRCsreXJLMlp5?=
 =?utf-8?B?WFRORGpCVDloVVo4VUFSNEZZUVdZbjEyemRzcEU3dm1JY3hZYTN4emFEc3Zo?=
 =?utf-8?B?cEVzcUkxd0NSaUhIeFh2bEc0Y0t3R0dzUXZRODRFQmFFY0RjTnZoNldrNWN6?=
 =?utf-8?B?RDhTYi81OGIzUkEyaGtrMXdGWWhLUk1XTzJwVVJ4THFBemVrZlhOOCtZT3hL?=
 =?utf-8?B?UEhRdGkrYThaMUJwNGRtNGl1THFKOThLbXA1SjY4QnkzUnBlaWRKV2xkemly?=
 =?utf-8?B?eS9xdEtxM0swN0lkVmdiS0FhSndNdmhUbk15ODZ5MGlsMFl1VEJBUFRzQld2?=
 =?utf-8?B?bnUrb1dLNlcvWDZzVU1LZkNMQkE5M3JoNmx5NVFST3phR09lWVF2TjN6UXJ0?=
 =?utf-8?B?TFdlTmtxM3dWNC9OS3p2UTFkSGJ6cDFQUnJub2lsdHlVK2JCTGVzbkJCbTU4?=
 =?utf-8?B?dVZRUkRGdHcvRzVqcG0vV2hTQnlXeEg3eitlVjRWL3ZzWGUrQnZvN25qUXpv?=
 =?utf-8?B?aEppZ1pmcWwrdjFuaDRDRk1rL0FyUjBKTDZadytUazkrclUzZTVtRFBDTU9u?=
 =?utf-8?B?UzRYbHM3YUtOZG9mMHVFcEt2Smg2OXFHNmcvUzJ5TEE1ckRKazU1VlhwRWdR?=
 =?utf-8?Q?GTxnLA5sqKD3PKk0J5T8Ze4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6f72fc0-c670-4f32-077d-08db0fae0913
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2023 23:40:35.3400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mNKLIXAJWY4PvCEMmQV6XUCgb/Rb974EmykIz+qWV4GF1UdtyZGxj1SahIQdcNBKI2wXll8bv+7i6CV0Cz9hSSrTnn5vPeRkLQOW81EDY287So5HQ9jQ/hk0mtv03WPe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6469
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676504439; x=1708040439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aUHcCsKfn5wKsaA8m+B1/rR8pPd8d2RlGxjKLEXUJPs=;
 b=NzqMCcCdJwhWYVbSRUdq1L0YASMT5UkPTJcFXMRYC+E8BmbnEuNqUwox
 X4PiFxFvjnUGkDel+9HD5F+7loL9yzX/jTfHZbdNeIUgLazM4zjpfl/6x
 Bj3V5AHbzBH7XvcSPVMmYsaOUM99+k/7tiEN9l96Xyi6QwnAGzlI9p0NK
 05pcYOz8lxZ8w4hCfXmbN3KydYBBbuEB9g4dnxUzV2Rq4+mV27b6KoR5T
 cZ6/rpLyLDeO6uxf5cGqtkqdKtEm1YZh9N3puLtlcG/d/58cVCpDpbxl+
 3SjpfE5F/hL8ciWPnOLHxGJdFOIY7Zcb5BBsuQfIe9+fySiUmm7gblrGz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NzqMCcCd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

HI Tony,

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, 16 February, 2023 3:23 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; naamax.meir@linux.intel.com
> Subject: Re: [PATCH net-next v1] igc: Add transmission overrun counter
> 
> 
> 
> On 2/7/2023 8:45 PM, Muhammad Husaini Zulkifli wrote:
> > Add transmission overrun counter as per defined by IEEE 802.1Q Bridges.
> > The Intel Discrete I225/6 does not have HW counters that can determine
> > whether a packet is still being transmitted after the gate has been closed.
> > But I225/I226 have a mechanism to not transmit a packets if the gate
> > open time is insufficient for the packet transmission by setting the
> > Strict_End bit. Software counters have been created for each queues in
> > response to the IEEE specification. Thus, we can assume that overrun
> > counter is always "0" when setting this bit.
> 
> Can you explain why this is needed? It doesn't seem to make sense to add a
> driver counter to always report 0. If it's needed for spec or tools, I would
> think it should be added to something higher like netdev stats, not driver
> specific stats.

We need this as part of AVNU Certification Test Case. 
The reason why value always reported as zero is because we set the 
IGC_TXQCTL_STRICT_END bit. I225/6 does not have HW counter to really 
Know if the packet is outside the qbv windows even though we unset the 
IGC_TXQCTL_STRICT_END. It much simpler to just add this counter as part of
Driver code as of now and pass through the igc_stats where it can be show in 
Using ethtool command as well.

> 
> > User can get this counter by using below command:
> > "ethtool -S <interface> | grep qbv_tx_overrun"
> >
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
