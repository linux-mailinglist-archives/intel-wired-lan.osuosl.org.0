Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F534733F3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 19:26:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44CF4405E3;
	Mon, 13 Dec 2021 18:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oayaJ30j4-Kp; Mon, 13 Dec 2021 18:26:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 392474026D;
	Mon, 13 Dec 2021 18:26:52 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B19C51BF3C2
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 18:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9EA3A60B23
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 18:26:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="K5oZTT6A";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="o/1+reA2"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNNIrBpzfuqP for <intel-wired-lan@osuosl.org>;
 Mon, 13 Dec 2021 18:26:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BB9660B22
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 18:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639420005; x=1670956005;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=d71I0oFjLxXyXbDj3PcBRHK0u2nDHAVx6460GAKCPFo=;
 b=K5oZTT6A6eTFT0UF+x5Ux10LWo3pRVnbx3ccHGkf+h8KFCTKOWKIObPq
 46hDBkjKE3GwCp/NPDqGx7EVvz3jQUdvJGbPVInoi6LoSSbvZWEy9HuSS
 LFHNb77wQsq77KVh6d9D3VlCz6eJtn+IHmMowom2QklbHt16B27YCheIx
 Aqx4/mK7m1s6mJG0nM4rmOstHAokKONDTINue3EL5QnJYQ4ZEf2stNQr9
 zCPxW9ifAGtg+OLQv7yt0naWSLQXeUHxgk20u0IpoXQYSdVrxb62HKRU0
 UPbeB8jvriIB93maf82n0Wfp5T0k5vWCnVz+e6LccG5UxXzs4ZLVURPKt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238742585"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="238742585"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 10:26:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="609233156"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2021 10:26:40 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 10:26:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 10:26:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 10:26:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i42+SdB4OhH7TUyTSh5xwb/BZGatftLeD0RvFSnggmb8hlCTr+uwNTuXt1ZyaGFEzVEXgyWYn8LIOxDp3IO66tp9V8/CMOpwaepyjiBkygKxaBbINg0LGmDQM+a143WE+goM5JdKTD9GB0kv3C82CV6PCZ3/DrI6Tq0rJcHvQMtZEgco32ZCEYsSVE7Jwy935ZAAT97y3tCMbNy/J96WnVUH2fYEn/eFCbLr/PnarFOyFHeP3K+LiVwClcmX5UzcNL9lfTzutlSpX8JxykNlqnfJgUhyjvvtTw49L6f+D7uXAeX5PQv1zyQoDSDkmlF/n/UD/0tVOtJ/scnzy2QFsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d71I0oFjLxXyXbDj3PcBRHK0u2nDHAVx6460GAKCPFo=;
 b=QNt6Su5/FlG7L+FbbzfJDeVPvwkC32ngaQvLhTBIVfYMl9avv2MeBUX1ec5LVPm3/tC1VeD88PyuHcsfxCxx7pbz1N8CgQQSGnz/I9a/4ebllvFofBPrH1WZsIapdR16UOnYRfpNNZu+C+y+3MRScH6k/akNVqaisMPyqECGPaR2OTQkGsF9/WbNTJcLQoHseRr+4GFcPHnr4XE8wL4suX+DHkYi/kftH1lzxCCW5CPdpV+vhM5fvVEEKk8AREHE3jWqvrfUc0pVPmHbnEDqwl7v4cWGVem1c3ziXdpgOucLmqF1LosHGZzFy5d2bevt0+ohcNNkb9tZjPqb4DMclw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d71I0oFjLxXyXbDj3PcBRHK0u2nDHAVx6460GAKCPFo=;
 b=o/1+reA2e6VV2sHjaI0M74DZ/aJnb5k/694GsQI2uqZ1Qr9OrD6MtCLICWr1IKl35Jyqea5A2ASzD+vrLUsUoxEyIKWdQgb4BrfDEi26C0OJClATr66TUtfYKuy2w4/URvJuKZf1SjljQdZcAgy2dPLW6fIJGKM7Atrg+2R3Q9Y=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.13; Mon, 13 Dec
 2021 18:26:38 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883%4]) with mapi id 15.20.4778.018; Mon, 13 Dec 2021
 18:26:38 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "jkc@redhat.com" <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
Thread-Index: AQHX7B2EhTyi2JzJ3EWFTnt4PnsZb6wwxXKA
Date: Mon, 13 Dec 2021 18:26:38 +0000
Message-ID: <5da6e781833ce519a052754a68fde14d8477180b.camel@intel.com>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-2-jkc@redhat.com>
In-Reply-To: <20211208102153.669338-2-jkc@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f33ea60f-4727-493b-d553-08d9be661a24
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_
x-microsoft-antispam-prvs: <SN6PR11MB31331CD3EE0F24AAF3D43AEBC6749@SN6PR11MB3133.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QnYcF2J9rJA2ScT+OELCKE909rcEWnYef/SfFD/CtETZM9hp7QWFr3TZyz5v/adBzXHJq53jOUopSNPy1wjahVbFTNEXzkkBJHDu2g7VN/ivs+KKZq1orc185aVV8HZfV29DufRMb31EUldTJb5s/TyiVja1yPlavToDF4sY5B70sl1zIiHrq7nl02hisQeGHTcXXBgiSsNYyFnIzOO57r77dBFFNbvutdOQWOz5Jyym7MPQOYWN+eIlAm6I4wIaaC1yev23Tz4ORly7BKey5TNhoiP85qbhul4FjtSNHmjLiIrPUoh4eaOVbwWzc6tH2KtfyH44/HU1qX43vuiUrFY1rzla7Qf9P18bX0RlfUc1ylIb99OUwrR6tn6Xdz62kNaO6EFsPw1KBsKYpmMoUPZr1vxleC6CYoIAaHCiDLMg4GMAvszI8+yF0pB+IkZg6orxteYBp3XsZV61R4tZrPjcozkfkejOUc/fkBTGEPLz2170FgnIX8jbvd8i47XCMfKWDzmeUBUEOptdqNjee1/I09pMZqzpqbiQMsk8MWrV4W/BWG4/7jPcqREAeBBOknA+e2cj+X/dZdXPKMiRIvZC4EFXun8W3QllQ0gvPxQM3SI2pW79kx3qSIz9JaZhMzejlFa0MTfihvysvOZFNpFb2BUwnxtennAER/owtXZ9nuVqN6W8Tqu2di89IVDgzOzGZL24pOabW7ndgJKJuqcemc6/m1p3zAwALN2PzFOGUvR1/KubTl5EDsP+i5LyoLL2pztmE/qssNA6aT377pC1621FxyLPpVe+CCIlaXo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6486002)(110136005)(82960400001)(966005)(66556008)(36756003)(2906002)(316002)(83380400001)(86362001)(38070700005)(508600001)(8676002)(6506007)(6512007)(26005)(8936002)(5660300002)(71200400001)(66446008)(66946007)(91956017)(64756008)(66476007)(38100700002)(122000001)(76116006)(186003)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZURGV05VdENGRmxZWVUrVzM2bjlzaEZPWS9NOXRCQ1NqTUl6QTAxb09IL2xm?=
 =?utf-8?B?Zk9sNk1LOW12Snp6SDdINlEyT3hHVW83TzVJcTBJcGFFSTlQYlhOWjllMjB1?=
 =?utf-8?B?RkdiRXI5bmY3LzVVdFM2VTBFam5CYVAzbU8yaDhxNVZ5aUJPczdVWEF0WE45?=
 =?utf-8?B?UUdkRmNjWDFOdEorWnhDK1cycW0yQ3FTNFhEVlY4ZFRPMG1iYnJCbTBDMGhZ?=
 =?utf-8?B?OVl1TW53VE4xb2dJckFxSFQ0N0xCUDZsaVFzOVRTaENqUllYQkhWc3VQUEp5?=
 =?utf-8?B?alJ0WGxBNGJLRHo4WFZWbC9rZWp4RnpacDZoVVB3eW5iekJSQS9IbWI3L0py?=
 =?utf-8?B?VzNLUTVTRFFBL1ByTTIrYVR1ZElTRVYybDJGc1B6YWpnbEYwa2Q5dk43bFNB?=
 =?utf-8?B?ZDBCK3RwSkx4QkJ5anZqMGsxK1NmN2hhbEo1b0s1VkRPYUhhQnY1MWEwTTlI?=
 =?utf-8?B?dUpyVHNWejk1eERnaEVSSkFzazJZYWVYcGN6VW5nUEJXOHJpbkhKZ3Rzb0s2?=
 =?utf-8?B?YWJCS29pOHVhcXFMd1RPSXJ3T3o4SUszU1Z0K092N0V6K1I2OTliSXVZTzNX?=
 =?utf-8?B?YWpGajVMVkJlUmcwWEFXKzNlTFRMN1M2cTcxQlFJQ09zRk8zazZ6bkgrT25y?=
 =?utf-8?B?alZiMmhDRWNoK2N1ZHVsbUw3TkNtNTlMeS84bUc5MVFHbCtQcmVlYU90OW9Q?=
 =?utf-8?B?MGtkTlgwVG1Tb0hIK0JRY011clk1dUZWL05wVEoyVXRFTEpxMjdscEZUTVgz?=
 =?utf-8?B?cnpWWFppZWJ3M0tWSUNkQk1vNTkxbEw2dllQeVlESzZ1dlJkczFQT1hBeUV5?=
 =?utf-8?B?NUdFMkxWbDV5MHluam5udnplbzR1bUFjbUQwZjZ1QWRaeVltaWx6R01CYTRZ?=
 =?utf-8?B?RjlFNGNTNkRHaktnRjJaVCt3ZFhhVjk0RGYyQUJ6WFJjS3ZiV2I3MEVKVzlM?=
 =?utf-8?B?d3h6NUErVm8xd3B2NVlWditiaXZUZnFqeHdnUzMzelM1eDVyTjJvR3d2a0pF?=
 =?utf-8?B?MlFYY3VMU1NQRW96Vk1aanF5UHRJQ0pPc2xRSUZDZXVGUVFPVWpTejczWHJN?=
 =?utf-8?B?QlcvTUl0QkVsZTFrY2x5MDRzQWFDSlpZTVBQYU8ySUxvQU93anU4VHNHVTRM?=
 =?utf-8?B?Z2l6L09ObWhOMmpUM045Q3J0SHBNRStRUGVrK1RJL2t2TE8zY0NZcUhTVlpF?=
 =?utf-8?B?cVB5MC91Ukk3bFhtL1ArQ0xvN0JSQmo5QndUWkNTWENYVDhHM3BQU3JpV0tU?=
 =?utf-8?B?UnltWGpUd0VSWmNlNEJSaEpsK2pWQ0xEcXp1aEhDNnNPZy8wMngrdnR3ajF6?=
 =?utf-8?B?QVcvcDZoR00xYVNFcXNXM1hGdFRsbU5ZU2JYLytScWNkZnZXVjlQdFBVTXVN?=
 =?utf-8?B?U2JaUlBKOTVLcVZKQ0JKay9xdDZBZjFyOEI0QVF5WkdiZkJ2UTkrY3VQVTVs?=
 =?utf-8?B?bkJDQUwvREJ0U0I4NFJ1d21Sa09nVHRkMnRnamJkaUxhM1pKK3ZIb2s1cmJS?=
 =?utf-8?B?ZjRsN1p0ekNIRkJUdkgweHdQYXREelMrSUFTYTBVb0EwTjJNZlVXelliQ3Ir?=
 =?utf-8?B?RytiUFhRU1liak9nU0NiSjdQU2tiaDFQL1lNVHE0c2h3Qkw1cldWa3E5RnR1?=
 =?utf-8?B?YzVoZDFDR0p4ZE5lWGZRUlJUQk1LdGZlQkc2aDZ4MzFjQWlXb3BTL1FYaWJN?=
 =?utf-8?B?ZG9GRDRwQnB4aXhQaExKZkhpQzREYUppVlkvc2hGOUlBRVdsbFJZUUpnc0Uw?=
 =?utf-8?B?M0R6MG9TZzdiSnkxZU5yWGdnM3V4ZzhvMy8xV09sOXBrQ0J1VTdlVmdOMnN0?=
 =?utf-8?B?NVpHeXpMa1BuNGtsNkt3Tkt0d1MvVk5vWGZuaGYzdmk5M1NCM2cvVCtOWjd2?=
 =?utf-8?B?ejNUN2I1NkhmSDg3SksvaTR0N1pvVE1jM3FXc0hQRzh2VFErQzhaWTVDWnZx?=
 =?utf-8?B?R3RhT0Q2R1d5VzJzdDNIckg2djRhaWhzdWg2cjVzTlFqa3NzSTQvWGJYT1Vl?=
 =?utf-8?B?VUdCZFFkVlRSRkxHUlZtM0w3VUZZV0E0ejhxeWV6dkJ2dDhYN2tuWWpPdDRv?=
 =?utf-8?B?S0xlL2JoQzlFUFByRzFIdjFxVU9reFRQUmJ0YmxaZndrdC90S3ZyZDBJRDc1?=
 =?utf-8?B?S1cyenlZNVYzNmZ0RnJZdUFWbzVmU2EyNGNrbGFTQ3cvR2NWbUo3M1g0enpY?=
 =?utf-8?B?MDhQOWRwdjVEVlJSeUJZbXViRG5Yc3J1Z2E5YlRHQ1pscVhoUFVRS0dYMTc3?=
 =?utf-8?Q?38yI/pF6znju12hqYIwIx65si1LoHpXV2osZ6dqIsM=3D?=
Content-ID: <FD38CE6235C4C54E85C02268EFE88FE8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f33ea60f-4727-493b-d553-08d9be661a24
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 18:26:38.3261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YrRFwzmhYGRNbsQujVzGKg2kLoazFKlv4/QzE/HLYM5sBhGvaN4PwCCVEmjO2MCHaSOMk3Vqqh0VwwsR22HMX+nBtVaywQVFFr5pH5PmVaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMDIxLTEyLTA4IGF0IDA0OjIxIC0wNjAwLCBLZW4gQ294IHdyb3RlOg0KPiBJdCdz
IHBvc3NpYmxlIGZvciB0aGUgY2xpZW50X3Rhc2sgdG8gZ2V0IHNjaGVkdWxlZCBieSB0aGUgd2F0
Y2hkb2cNCj4gYWZ0ZXIgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZhZGFwdGVyLT5jbGllbnRf
dGFzayk7wqAgVGhpcyBjYW4NCj4gY2F1c2UNCj4gYSBwYW5pYyBiZWNhdXNlIGZyZWVfbmV0ZGV2
KCkgaXMgY2FsbGVkIHdpdGggdGhlIGNsaWVudF90YXNrIHN0aWxsDQo+IHF1ZXVlZA0KPiBvbiB0
aGUgd29yayBxdWV1ZS4NCj4gDQo+IFRoZSBzdGFjayBiYWNrdHJhY2UgdXN1YWxseSBsb29rcyBz
aW1pbGFyIHRvOg0KPiANCj4gW8KgIDEyMS4yNzI5NjNdIFdvcmtxdWV1ZTrCoCAweDAgKGlhdmYp
DQo+IFvCoCAxMjEuMjcyOTY5XSBSSVA6IDAwMTA6X19saXN0X2RlbF9lbnRyeV92YWxpZC5jb2xk
LjErMHgyMC8weDRjDQo+IC4uLg0KPiBbwqAgMTIxLjI3Mjk4MF0gQ2FsbCBUcmFjZToNCj4gW8Kg
IDEyMS4yNzI5ODVdwqAgbW92ZV9saW5rZWRfd29ya3MrMHg0OS8weGEwDQo+IFvCoCAxMjEuMjcy
OTg4XcKgIHB3cV9hY3RpdmF0ZV9kZWxheWVkX3dvcmsrMHg0My8weDEwMA0KPiBbwqAgMTIxLjI3
Mjk5MV3CoCBwd3FfZGVjX25yX2luX2ZsaWdodCsweDVkLzB4OTANCj4gW8KgIDEyMS4yNzI5OTNd
wqAgd29ya2VyX3RocmVhZCsweDMwLzB4MzcwDQo+IFvCoCAxMjEuMjcyOTk1XcKgID8gcHJvY2Vz
c19vbmVfd29yaysweDQyMC8weDQyMA0KPiBbwqAgMTIxLjI3Mjk5OF3CoCBrdGhyZWFkKzB4MTVk
LzB4MTgwDQo+IFvCoCAxMjEuMjczMDAwXcKgID8gX19rdGhyZWFkX3BhcmttZSsweGEwLzB4YTAN
Cj4gW8KgIDEyMS4yNzMwMDNdwqAgcmV0X2Zyb21fZm9yaysweDFmLzB4NDANCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEtlbiBDb3ggPGprY0ByZWRoYXQuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jIHwgMiArLQ0KPiDCoDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+IGluZGV4IDZjMmFmYmM4YWNiY2Qu
LjYzZWVjN2VkYmY2MGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl9tYWluLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2
Zi9pYXZmX21haW4uYw0KPiBAQCAtMzk0MCw3ICszOTQwLDYgQEAgc3RhdGljIHZvaWQgaWF2Zl9y
ZW1vdmUoc3RydWN0IHBjaV9kZXYgKnBkZXYpDQo+IMKgwqDCoMKgwqDCoMKgwqBzZXRfYml0KF9f
SUFWRl9JTl9SRU1PVkVfVEFTSywgJmFkYXB0ZXItPmNyaXRfc2VjdGlvbik7DQo+IMKgwqDCoMKg
wqDCoMKgwqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPmluaXRfdGFzayk7DQo+
IMKgwqDCoMKgwqDCoMKgwqBjYW5jZWxfd29ya19zeW5jKCZhZGFwdGVyLT5yZXNldF90YXNrKTsN
Cj4gLcKgwqDCoMKgwqDCoMKgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZhZGFwdGVyLT5jbGll
bnRfdGFzayk7DQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoYWRhcHRlci0+bmV0ZGV2X3JlZ2lzdGVy
ZWQpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1bnJlZ2lzdGVyX25ldGRl
dihuZXRkZXYpOw0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPm5l
dGRldl9yZWdpc3RlcmVkID0gZmFsc2U7DQo+IEBAIC0zOTc0LDYgKzM5NzMsNyBAQCBzdGF0aWMg
dm9pZCBpYXZmX3JlbW92ZShzdHJ1Y3QgcGNpX2RldiAqcGRldikNCj4gwqDCoMKgwqDCoMKgwqDC
oGlhdmZfZnJlZV9xX3ZlY3RvcnMoYWRhcHRlcik7DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBj
YW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPndhdGNoZG9nX3Rhc2spOw0KPiArwqDC
oMKgwqDCoMKgwqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPmNsaWVudF90YXNr
KTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGNhbmNlbF93b3JrX3N5bmMoJmFkYXB0ZXItPmFk
bWlucV90YXNrKTsNCj4gwqANCg0KSGkgS2VuLA0KDQpXaGF0IHRyZWUgaXMgdGhpcyBwYXRjaCBi
YXNlZCBvbj8gVGhpcyBkb2Vzbid0IGFwcGx5IHRvIGVpdGhlciBvZiB0aGUNCklXTCB0cmVlcyBv
ciB0aGUgbmV0ZGV2IHRyZWVzLg0KDQpUaGUgb3JkZXJpbmcgbG9va3MgY29ycmVjdCBvbiB0aGUg
a2VybmVsIHRyZWUgd2l0aCB3YXRjaGRvZ190YXNrIGJlaW5nDQpjYW5jZWxsZWQgYmVmb3JlIHRo
ZSBjbGllbnRfdGFzayBbMV0uIEhvd2V2ZXIsIHdlIGRvIGhhdmUgYW4gZXh0cmENCidjYW5jZWxf
ZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPndhdGNoZG9nX3Rhc2spJy4gSSdsbCBnZXQgYSBw
YXRjaA0KdG9nZXRoZXIgdG8gcmVtb3ZlIHRoZSBleHRyYSBvbmUuDQoNClRoYW5rcywNClRvbnkN
Cg0KDQpbMV0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMTYtDQpyYzUvc291
cmNlL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMjMzk3OQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
