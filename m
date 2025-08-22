Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0291CB3238E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 22:25:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36DE860DF7;
	Fri, 22 Aug 2025 20:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08R3S5d_FG7O; Fri, 22 Aug 2025 20:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E920660DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755894341;
	bh=pD7FEhHPKLx+LQVP1vDgzzIq/OW8TePWPF1cYQv7pRM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ct2USwyqdMEw4tbWAefzPuUfuZTgzoCWgt3XrkbKNGYmLAxVAGBGD4HgnN8g+45Qp
	 2ytxEEb2SlxUKoT4y1Ti31ATPgrgpLikVpyrmrZsmr6bIkxz52cXktAUSfkkvlNetM
	 FcvLpY5HDAlhOyUZkj8T+ae1xdaFJyM2YNJ2ASW4xDfknPex6X4xEuS2DAvkQM7qnU
	 ldMKcdqCcOO8dv9qRhjhZ9S0VXdMnnNI6mICMeQZx5qH5s4ktYUw/vUMJ3UTGuL1uc
	 AL0kQ4cslEm6XuQ0ldHOtWztBAd2R1cCwfJ8PjWA21NMvxQ+Q6hBlxpJM8BDcxsszE
	 KUwmkrh8UQA6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E920660DF8;
	Fri, 22 Aug 2025 20:25:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AA7A1C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 20:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C67D60DD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 20:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CxVhQZWGGUPZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 20:25:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4428C60DB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4428C60DB0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4428C60DB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 20:25:38 +0000 (UTC)
X-CSE-ConnectionGUID: KFaCfH6VR6ei7S6UEO6bSQ==
X-CSE-MsgGUID: dmFrx/eGS6yUQiiL2cqO/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="58130438"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="58130438"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 13:25:37 -0700
X-CSE-ConnectionGUID: /18GVWKUSNe+7i0mtP1sNg==
X-CSE-MsgGUID: 93OfLc23SSK0ygKTI++b5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="169605983"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 13:25:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 13:25:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 22 Aug 2025 13:25:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 13:25:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NnmgW/InXrNGDyfo4HeYIwqkr6bKeCGKAQ+eZoJnTFWuHp/xpiF2dipB15+Bm/7KgWlInrZl1bo95gJj2bTKbAfepfnkQHPnXkiiYZEex40AKL5xONGhciGtwZW5xcRSxhignjPqvnrpl2hwYfejBLSnfPL9paVmCoShzaSFl+IqeiLyXhKqSha+01Hrwb9XqFstzvQevfhOvGyRedTa+9oyYLqPYVW8rPgHiRJOAgIhD2P7f9alvLRS46WxWhu1Ap0JwplDdOGbIIu01Yxh3LbPNJZ+Y0wl+b4bprMWWJVniOyGT+FWnmhrRx/tQsFM3NlRUAhzKIw5FrxbREz8sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pD7FEhHPKLx+LQVP1vDgzzIq/OW8TePWPF1cYQv7pRM=;
 b=vH9yLP3bDljjlBuj40A0BCU8MxeTwf5XJcFTXb57MmL0r67ajzWTOJG2wha9pGRoZ0isRgq86buJiZdKc9dZRh+YGTKi50vvEhUCT+HSlmmaLPpXRjdbU/qb2yqhAUi3OmYdmEbqNFjaRE7m4lvs3kocnnEAX6xkN2eCE0FqVIwoOUxpLBKH4MzgKa9VceBsvo1H7TYsQjpEp5Zj3gy1A3e68iKsco5pc9UEnE9+Dhad3EaKu2TtfKCGflakRq5r+D3dFY+9nN9rikEDhioAeugnHlqb+yiUOA9sNoid8pngPkq0WCMULksqnMjuwsghuX5BBuqy6csodY+4KaD3+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB8226.namprd11.prod.outlook.com (2603:10b6:8:182::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Fri, 22 Aug
 2025 20:25:33 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.014; Fri, 22 Aug 2025
 20:25:32 +0000
Message-ID: <68ac693b-57f9-4403-85e9-8ce90d50aeb1@intel.com>
Date: Fri, 22 Aug 2025 13:25:31 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Calvin Owens <calvin@wbinvd.org>
CC: Ivan Vecera <ivecera@redhat.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <linux-kernel@vger.kernel.org>, "Jedrzej
 Jagielski" <jedrzej.jagielski@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
 <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
 <aKcr7FCOHZycDrsC@mozart.vkv.me>
 <8f077022-e98a-4e30-901b-7e014fe5d5b2@intel.com>
 <aKfwuFXnvOzWx5De@mozart.vkv.me> <20250822072326.725475ef@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250822072326.725475ef@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hfpDXnSIPbOLhor0a8RG205G"
X-ClientProxiedBy: MW4PR04CA0110.namprd04.prod.outlook.com
 (2603:10b6:303:83::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB8226:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c37ea44-9632-4115-9f2e-08dde1ba0b3a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWgvR3VMZStlYlU0eG5SRjRoUHBUdlRZM3dkaTZiNjlxNklUSStuaWI4YlRs?=
 =?utf-8?B?OGRLSWxyV2lIR3E5bTRNMHhDbWZaQXc3NkE1eC9mMWRxTnNhY09hdUxZTGJw?=
 =?utf-8?B?QjlVQ2tKUFVQU2cweDNiS2JveU45SFpNTXVqbHMwRHhia1BUN05xWmxXMnRW?=
 =?utf-8?B?Q3BrWlkzcjQ1S1NWUWlDOHFXSzY2N1duVmx1VE5mVU5HVTZXMC94R2E5QzVB?=
 =?utf-8?B?QlpDbkZxeUprYzd2a210UjREdVFReHBvZ0hWcHFwcEY0MjRPTHlaUmtFYU9N?=
 =?utf-8?B?UFFuOUQvaGxnN2x3cmRZU25qY2R1VW5TUTV3Y2RvRkVNSWNlRTJtS1JvT3cy?=
 =?utf-8?B?Um9jWXA1SnFpa210MThIdnQvU2VldnI3R09SSjhPN3I2ejlad2pMWTNMOCtk?=
 =?utf-8?B?a0loYlR6ZDFIMVpGckxYbWhqTTlMRFV3TGhZbVA4dVh2TkpVeERua2ZudWR6?=
 =?utf-8?B?VzBBS1BRNHhLZ0dEM25pb3BTNDZsTDhES1lXUWNkV2xhMVl1SDhkdmx2dWtt?=
 =?utf-8?B?clV5RUJkcFR5cUI3MVZpcVpFQmgxOE1CRVE1YlM2OEVJdUxTQjM4OEJnNnRh?=
 =?utf-8?B?K3YrcGlZTlZFY3MvNnlhZWx6RVhZcGsxM0R4NGtERVVmUzNBRUFuMENHYm9a?=
 =?utf-8?B?R0E1TW10dFhoc1FQMjNHUGQyTGExbG5DemJnRVV0aStkWDRtaEkvQlRwNWkz?=
 =?utf-8?B?S1gybU9odk1mRjlYWHRaZ2RIKzUwL3BZa0gyZndDNG1RT0Z2UmNrTGxwSmFK?=
 =?utf-8?B?b0I2ZHIxNWt0UE5pU1BSdVRjTVhCMForZWdzdHVXVjByZVpyUnBKSkRMTmxP?=
 =?utf-8?B?dG9WellkbTlkZkdLMnU1RXVqRmlnSG9OMFRqVkZSMi9mbXZFeWNLeFFpVHRZ?=
 =?utf-8?B?U0c4aFlTbklEazRKQzJNNmRPKzVNME5kVnhPL0JuWm82TzRTUVFudUZNMVJ6?=
 =?utf-8?B?RTBaalpSNTFuQ0VGd0J3WWZ4R0ZTNm04UXNtRk16NUZTYlFjVzBuVlZnenFj?=
 =?utf-8?B?YUp5VzJnSkt6cjlNTHBla2FqTm9TdjVJQ1ArSWo5dkFRL0ZZdjFYY0JuZFFw?=
 =?utf-8?B?VGVWdEVGUGY2NC8ySlQxK0l6VGRuN0RDYzd2K3NKeno0MGVyeURxNThJVDFP?=
 =?utf-8?B?Z3hCbS9DRUtZcERzazczNmk5bDRBOWpYMGpoN25TbFFtRXEzOEM5WmlPa3J3?=
 =?utf-8?B?eE1BcGdBRktOaUFMK0NZRmNsb2JMTnFQb3B4bUJ1TTFseC85a3U3ZU4xUUV3?=
 =?utf-8?B?SkIvaVhiSFFIOHBqUVhEd2tjM0F5aUpRNm1PYUYyQ0NKdVE3T3pOVzR6NTUy?=
 =?utf-8?B?UWlyRHZ4UlZrTTBCZHRTVERJQU82UnJnM2tpQmhVY2xiYXNVNWxpUGdhZ1Fp?=
 =?utf-8?B?OTNUNUlERldBMzZvcm9lV21KaEtqYW9kRWswMVRsMHVSVUljQUVFeUlRSU8z?=
 =?utf-8?B?QTkycUo2S3BaeE04a29KeGJsalJYcHkwZnFWdG9MZHRXOTJPM1pGUjI5Qkpt?=
 =?utf-8?B?ckp6RXJCK2l0bnB0VXVnVUwvQzVNOVU3QjBKTWc5VkszZHlEZkJGS0JnL05L?=
 =?utf-8?B?TXQxZ0k0Tkd4NFVObXQxdmxYSytxbTBOdWFKTWtvdnRsOXF0SFE5N0VWL2pn?=
 =?utf-8?B?Tk9PYUw5a3RUNnBQRWVzdENwTHo5OVIyVmd4d1lILzJBRkRyeDRrQ0k4cmhJ?=
 =?utf-8?B?TEpqdVN2UTVxOHFTeS8ra0Q1eURETUw0ZnBWZDBWZXd5M0N1TmUzVmY3dHJR?=
 =?utf-8?B?a2IvbGk5YVprN09aQWhPM2crYTJsc0FOSTUzcHFrbWhRN2xCakkreFBNcDFH?=
 =?utf-8?B?aG9BZmV1UEJzRHRBS213NmlRbGxQZVV6Q2JUcU1Pc3VEcTNkbklPTkEzbTU1?=
 =?utf-8?B?MDFlanMydFF3YW8xT1ZhRE9hVzJYWG9MWWpMQUF4Q2FpT1h1ZVhqdzFxanJs?=
 =?utf-8?Q?lky9j9IsXCI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3lkNy82emFDSlRhU1kwT0xWNTdDbGk5U0ZGUW1YYlcrWnNHbnFDb3JSUHJT?=
 =?utf-8?B?TndvYWtGLzRNbFEwc05yRzdmNjJ0RFdZbVRIOCtiaU8vVjNRWE04NDJFWkxu?=
 =?utf-8?B?aXd3elhsNkw2UTdKb0prbE9CTnIyTGltNGpPa3JjNytLVTBjcUNmenBnckc3?=
 =?utf-8?B?L1BoSTR3aU5xZTJBanhBUllxeEFzaHVyMXZzbjkrMUpvQ1NmRGtWL0xGSmRq?=
 =?utf-8?B?UkdXaU40SFFnV2VYUXdPaFpMODNrOEt3SWovQXlQcHlMSFUwci8zN1ZxUGpQ?=
 =?utf-8?B?M3NjekRiZDdMN1dvVlJkWGtWYlk2cGtBdGwrOEk4eUwyQTZzeE9jM29jSG9F?=
 =?utf-8?B?SWVDRURlOWQ1RFQ5S2JROU96d2hMb01vbVdMcE1SNnl5WFdoc1VkL1pDMFBP?=
 =?utf-8?B?MXhUakFRNXZjRTNEU2FrWEMwOTA5T29hTEI1VENIT1p1eTdTZzR0SklnS1RH?=
 =?utf-8?B?aGN2aUxZbG40Vnl5ckw0dVZqS0RyU3pvNnhmWklvczJGYnRZbDBESEdQZERn?=
 =?utf-8?B?MFZkVSs2Tlhha01oZHQ4ZWFpNUp6L3FzV3Y1eXJxVTNKVU1sTjNSdTg4SE8x?=
 =?utf-8?B?dEhkaUVMckR1WnQ4YUl2ZFVWYUp0cDFvdUo4YzM0bHpXK1FVNnMwMUlXRmJO?=
 =?utf-8?B?dHZGUEpqZXJQb1J3N0RCcnlMSWhWSHlOcnBpcmR2RGQ5bFo1N096ckxXNWdQ?=
 =?utf-8?B?S1RINHRmK1I1dnVXTGtpUFJvbXQ3WGVNMEtWR2tuQ1pvS2d5NlR6NG1iWVZa?=
 =?utf-8?B?cDRGYmNsRWY2N3ZVcEFmSTVDT2RXTHpiOGg1TEJ1UlZZQk5UTmZ2SnFLdStS?=
 =?utf-8?B?Y2RSSHJTZWJvSVBubm1aK2ZuWHAyLzdMd0IwT2p6b3pTLy9ScVBQVEpwUnQ4?=
 =?utf-8?B?dXZCZnZVNS9UNjBxNndPUHNWaGs3NDZQV2UvTU9wRVdnQklTMU1tcERiWjY2?=
 =?utf-8?B?ay9YYWxjbzJ4Tlkza0JCMXdwT2M2a1NaaFRtR0lmQnRvZkoySnhwaFFVRmx5?=
 =?utf-8?B?UDhVT0ZCelhidWZzRUw4UjBBVWp4aDJrTTVJZ01sRUNLTzFYd3M5RmNoOVBv?=
 =?utf-8?B?NUoyNUtabndObHJGTUU0MG55REhhTHpOUXNiU1RTbjBQZDU0KzNVaElTc28r?=
 =?utf-8?B?NkxNMTlTQUZmRTRKZG9OY3o1K0tZN2RnWGc0c1djZ3Nia0dIUnl0MVVieWVx?=
 =?utf-8?B?V2g5K05nUWFZUzEyb3I5RWlSUzlFZnN6KytibnUyYzBqY1RjeEJZejFMdUwv?=
 =?utf-8?B?VjBVTXUrcG1OTDFMT0ZPWGo0MHVwYm9ZSVI3U2pjSzlHc3hYTEdsa0JFS0tK?=
 =?utf-8?B?Q2NTdDZyZi9pYVpkRXpiL1JzNU9kYzhRakZvK28zeE5Ic0Z6WGtKUVVQWlNx?=
 =?utf-8?B?TW5lbFhOYTR5MkF1V2k5TVp1N2c4emxPczlUczFmQUhnUW84NVZGQnRRZnNJ?=
 =?utf-8?B?NjFBeUE3bHlEbEV1bVRtQm9Nb05VQmRJVithMTZmb0pmMStvdGR0VDRoN0c4?=
 =?utf-8?B?RmVGN3c0cWNqdzZZT1A4dzQ1aG9RckExZ0hhSE13U3Mxa3NXUmFlSVl4TGxp?=
 =?utf-8?B?ZkJNekhNK0JkRVZPeHIxam85N015aFVKdERGbXNhYkNWNzFKQUhlUllrY09G?=
 =?utf-8?B?anVOdVBsaS8wZUsxVnYyalVrV1FVc29aQ0pnNGF2OGw0b0NpMEZoWHBUWm9Z?=
 =?utf-8?B?aWZHQ1M0ZTFPRm5UWnR6QVdWdDRCMDBJOExyV3pnaUNraU52TjdZNXdmUkxt?=
 =?utf-8?B?T1hDNnZwTjlVNDhXMlgveW0xdStnUjl1c3NtK0UxK0lrTHJiM0Nyb2doR0JH?=
 =?utf-8?B?dWVyQUFBcEdFb21zUktSa2Y0QjlBMlFDZ3RDR0tkUm9hQTQ2aU5qUzFXdmJk?=
 =?utf-8?B?cU5kYTdHZSt1Zkk1a0t1cVFBVVVLakwwQzdIWGM2Y2t6YjZkSkQ5bmdJT3Ew?=
 =?utf-8?B?UHg4dGVVVG9OdmRhWTZqQkNLSWJNdUF0S3grVlh3TEgxRmtKeTJsUlEyZ282?=
 =?utf-8?B?UWwyZ2FocnRQNE9wKzZnOTNVSWMvdmpad24rQjhONHhOa1VOVE9XaVR5aVdp?=
 =?utf-8?B?ZTEyRW55MXEzbjltallNN1V6STJBL21QQWNQeS8xTGhEVVl0WEI2YmVyUzR0?=
 =?utf-8?B?eEttcEIySEgwR1lEZnFrbmNTMkdRR3hlTnF6SGJuOUk1eGliVEJXeWRlM21k?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c37ea44-9632-4115-9f2e-08dde1ba0b3a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2025 20:25:32.9005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RBgurGGh/a6zTNzaHRIZLo1oh6ZmI6v7bxp6Ecf7JUFcYOCHskU/HWHSwdBykj9RznVYoXkpNCPLIm5SpKSFs5cVyyHFLdJWqjG90OjZJcE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8226
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755894338; x=1787430338;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=xsk5FP3KlqqIfdTiGYcfN8yoouxDGThn0QtllUX/gDE=;
 b=jN8w/L6/3Z4MtrL5bPLaooTvXxVCft8ds8LograaESA/UdLHXFUsM8+V
 NgI8mKYguapmsI/OIBCFkWk3a+Al9Nzd3VwVCIqkqiGW25G4lv6ydOqkj
 dY3E9oN90uv5i0VMFFKmUXg/Qi43EXP9flCDms1+lRIijqtWLVhVOkSmt
 TiFYSNljZ6hHjPKI+HWYi8LW5XA/XnCkLmAbFLhyZIqITKERrRHOOQUQ9
 te2PyGwqieeSqM7PSRWLPcC/MfoEmxpufhWA9Jue89Rkr2d6BDqYwu8m9
 RvdmOejIZKz/ixBavj6/zZGvsbWNfCPPIzCFTqZ6+cbcBrFiklxv+L4k6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jN8w/L6/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------hfpDXnSIPbOLhor0a8RG205G
Content-Type: multipart/mixed; boundary="------------YStY08v28PXaTJcAoZnxHd4K";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Calvin Owens <calvin@wbinvd.org>
Cc: Ivan Vecera <ivecera@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Message-ID: <68ac693b-57f9-4403-85e9-8ce90d50aeb1@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
 <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
 <aKcr7FCOHZycDrsC@mozart.vkv.me>
 <8f077022-e98a-4e30-901b-7e014fe5d5b2@intel.com>
 <aKfwuFXnvOzWx5De@mozart.vkv.me> <20250822072326.725475ef@kernel.org>
In-Reply-To: <20250822072326.725475ef@kernel.org>

--------------YStY08v28PXaTJcAoZnxHd4K
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/22/2025 7:23 AM, Jakub Kicinski wrote:
> On Thu, 21 Aug 2025 21:23:20 -0700 Calvin Owens wrote:
>>>> If you actually have data on that, obviously that's different. But i=
t
>>>> sounds like you're guessing just like I am. =20
>>>
>>> I could only guess about other OS Vendors, one could check it also
>>> for Ubuntu in their public git, but I don't think we need more data, =
as
>>> ultimate judge here are Stable Maintainers =20
>>
>> Maybe I'm barking up the wrong tree, it's udev after all that decides =
to
>> read the thing in /sys and name the interfaces differently because it'=
s
>> there...
>=20
> Yeah, that's my feeling. Ideally there should be a systemd-networkd
> setting that let's user opt out of adding the phys_port_name on
> interfaces. 99% of users will not benefit from these, new drivers or
> old. We're kinda making everyone suffer for the 1% :(

There already is, see my thread here:

From
https://lore.kernel.org/netdev/883ee734-b9bd-42be-b072-23640fd34fdb@intel=
=2Ecom/

> If you want to stop including the "np<N>" to the device names, I believ=
e
> you can set the ID_NET_NAME_ALLOW_PHYS_PORT_NAME=3D0 via udev propertie=
s.
>=20
> From what I can tell searching online, this can be done by setting an
> appropriate entry in /etc/udev/hwdb.d/ .. i.e. adding this file:
>=20
> /etc/udev/hwdb.d/50-net-naming-disable-phys-port-name.hwdb
> net:naming:*
>   ID_NET_NAME_ALLOW_PHYS_PORT_NAME=3D0
>=20
> after adding this file, you also need to update the hardware database w=
ith
>=20
> $ systemd-hwdb update
>=20
> From here, you should be able to reboot and the physical port name woul=
d
> be removed from all devices which have it.
>=20
> It appears to work on my test system running Fedora with systemd v256.
>=20
> At any rate, this is fully an artifact of how systemd renames things an=
d
> I do not believe we should be working around that by modifying our driv=
ers.
>=20

I still stand by this, but I can understand the motivations and accept
the changes to allow opting out of physical port names for the older
devices.

> You're unlikely to convince systemd folks to change defaults, but you
> might be able to convince some distributions to change their defaults.
> Either way, you are best to work around this on your system in whicheve=
r
> ways you see fit.

I don't know why systemd changed the default, but that change has been
there for sometime. At least a year or two in Fedora if my memory is
accurate. The fact that the default has changed but gone unnoticed
because it is only triggered by a kernel update is I think part of the
challenge.

We can keep applying this workaround to "legacy" devices so that at
least those ones don't get changed randomly when we add devlink
support... but I think the real problem is ultimately outside of our
control in the hands of the systemd and userspace folks who chose to
change the persistent naming scheme default.

Personally, I agree the extra part of the name is useless for my setups,
and I have since configured all my systems to exclude it.

--------------YStY08v28PXaTJcAoZnxHd4K--

--------------hfpDXnSIPbOLhor0a8RG205G
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaKjSOwUDAAAAAAAKCRBqll0+bw8o6ISe
AQDQkqB4xmZsxxxBHUxlfWtzpU4bFDgbZKzeUahflFzE+gEAuR01rl/sOppqmolgQkdIQ+TOu23J
i6opX1CWD9HSXgg=
=mIUe
-----END PGP SIGNATURE-----

--------------hfpDXnSIPbOLhor0a8RG205G--
