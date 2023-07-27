Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C527676547D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 15:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46C7A81312;
	Thu, 27 Jul 2023 13:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46C7A81312
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690463093;
	bh=hpg3XOEOQCKQZHdIIzUVjXtoqwj266jzT3hIS270nJ4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tJZNY44QO20MwHGjTb73ZTYOpG9wXyfI+bMc5gpVB1CgV67g7PUjhQkeB0rYShRuJ
	 vr4OeEgdd4iJ0eFT0a8pOk7/sOObEBXl6Y3m4F3cavosjcYktMfsd24A9HFbs8xlUU
	 abrEKJjyp5p8eVSI1IDfF02b6P/dAXC3x4YnP5wul4hACWSo6uZ5gh+JKpGxv0FSD7
	 56d4fmZSzpuKz5dGPsfgwMwBoYWlxwjDcnIZUQ+yAf7Cm5K3A+gYDyzOrY/VOibDlI
	 saNynU/CXTDATa2ksg2epOKsQsRUWDwY5O+8i9G7hm2A5ddTSQRvlRwhkwiclTyvCC
	 f26Y5aQ0mkPgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvnZgL2wU8iJ; Thu, 27 Jul 2023 13:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C77A81300;
	Thu, 27 Jul 2023 13:04:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C77A81300
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E49B01BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C754C60E6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:04:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C754C60E6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g3GdZ1EqZQLm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 13:04:44 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57BBF60BF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:04:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57BBF60BF9
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="432097524"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="432097524"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="840776960"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="840776960"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jul 2023 06:04:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 06:04:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 06:04:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 06:04:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kj5PueoCjbS9/nN6EHKCCQlta0y/00JcLPgLPwA7oIRCm7ANoHL41BaKKBX4EciHyUuHNMH7JgzmKFXepxFCNABp5L0/bduW8FoY6jeg0taD16Dk3Jb4Gdc8lk+pMap7yyb5ZXWOxlbyJHnOGsTedyOkh67VoCtaquLlN570Yp+8CooYoA8uK4AEkelh8Uwt4FCq1ogbyqneBM2C1V/kZMruHN2nfC5zlQ/fX6WsBcptrT6y+f74oT/U7IDEPT70h6IF/YEIAHFyV8SQCfKrM1sfT+74H4I9ih//xWMeECOkVjy3Z1wTawY70qUkh0qgMtnV9nmdfcOfanbiUPCc3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/ggGUNDDHEclqG4yyFVm74mxq1afHIUxxpvt9WHHqY=;
 b=PWecAWu3C81FKqfsxOYV1B56E31IWSA3rbqMPeeEES1+zb3jNJCrp05oZjbzPpaAYo9fUq92sF5FZwl+p8x/AthpYZsTwakGqo07CuMIx+/l/Q1l2RO7O4CarjbRwFPsMk5ltaWBYaDkNfEMx7aa9w98oLT6mYZrCvrZJXUQvwPtyliDYrvnUmPZhXQFlEfGz+0jBnazb9RoNrs0KC4j033EoQxrnyyIcA0z/kAadJbXLJFpKudYUCGgMPgOPqXZ3db2Rke/t6uJ1bDhgImv/D9vuZp1Je7kffyNa79XLxZRE2gvXv0u4CTb65Wu+gvOKmilqBesJcqrs4ysmCwNtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 by SJ0PR11MB5790.namprd11.prod.outlook.com (2603:10b6:a03:422::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Thu, 27 Jul
 2023 13:04:30 +0000
Received: from CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a]) by CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a%4]) with mapi id 15.20.6588.031; Thu, 27 Jul 2023
 13:04:30 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 1/3] ice: Auxbus devices & driver for E822 TS
Thread-Index: AQHZu+pECxx5WMnZCEegVgiLYn1gD6/KyYWAgALQ/qA=
Date: Thu, 27 Jul 2023 13:04:29 +0000
Message-ID: <CH3PR11MB8414AEFA1B79B75DD489C07DE301A@CH3PR11MB8414.namprd11.prod.outlook.com>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <20230721154424.11834-2-michal.michalik@intel.com>
 <e5422704-4457-e7fd-aa21-83fee6e39d22@intel.com>
In-Reply-To: <e5422704-4457-e7fd-aa21-83fee6e39d22@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8414:EE_|SJ0PR11MB5790:EE_
x-ms-office365-filtering-correlation-id: d451e5b0-e206-402f-23e8-08db8ea20399
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OWO9k/d7m4FJCkEAisArg3RbsyFDMxwaOEoiwsdlVo9UKFsOFZubQxDf7J46bjzb/iTDoEN8V7cZbZGX/Xnf4+P7vHrpQVMWUp3AkeITGfuPu7eSkxvV+J5HRlgcaA3gHE1PyOWxaNXZRS9QtXtEl1WGdL9uwpCOARjIFoK5KcoOgyFwuZJmZdwnKaAYyvAsjkMFCCVlJ6rysFKD5ZYxi//HV/JlNGw4Af9g4HBzkhbazKKhmagHEGCfwErueMtXZV9MmHcM81SlG+gV0zNUXhzss+Z8WPhImIfkCHqn/eRdo3yCRQHXiNPrL4fMCxlHQjMYNi71AhgBTkHQJyNMtlJtHWTEBkp+qPEIsP/IuB5JnNRwxA8IA30mT/vUZEcYgxG6Z4QmY5rDb6kWHCAmM55XWkMkEFMyh9h07injVSSv+1g34cWyIuQ74fN1ujTKnMgb1Y5UrLG7DJ85Jw0ghyRJLYaJDonOzkDlmnXZgIIX95cHTKaHUzZWX/UrfePb6cXBJfBYLNIjNlnvYQnsGzgyeRU8eIn/l6oFK7zCS9AwlBECKaVauKPSjE1jrYiCWgNfswC8kVybZ4lwnU3g9AON7B71CwgcTXpId3lfr5NXC/BUC5sLcWEMd7MpQHMK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8414.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199021)(9686003)(55016003)(26005)(107886003)(6506007)(53546011)(186003)(4326008)(41300700001)(316002)(7696005)(66946007)(66446008)(38070700005)(5660300002)(2906002)(8936002)(76116006)(66476007)(64756008)(52536014)(38100700002)(8676002)(66556008)(83380400001)(54906003)(122000001)(71200400001)(86362001)(478600001)(82960400001)(110136005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWVyYmdpN0RVUzlIOFRhZ0VxODlHOUs5QWJ4YXpyem94MURadG9VVkVML0dr?=
 =?utf-8?B?N2Vtb1BhQlJUdzVwYUNLZWpjMTJ3Q2lNcUJESzNWTzVoaHI4Rm1BREs1TGQ0?=
 =?utf-8?B?ZGN3TmtHaC9za2huSzVqTThvMWV3LzdvYnhrRVRpQXdGVFZXUUwzWlhiK0RD?=
 =?utf-8?B?ODlZK2o5dFI2VzJpRTJNZVY4WVExWVpzZ1hPVkZGT2RyY0hCSEUxL3JIbnRj?=
 =?utf-8?B?YlMvN2Q4OTFWR0VHTTJQeC9OSDhXaXhlZ0VnL1VFaERIbFNNMHZqYk9aV1Yx?=
 =?utf-8?B?YmRPMHBRTUttZllleDVKdTMrUTVvS05HK1o2TlJLTDVTeERnUEVpSWwwN0lQ?=
 =?utf-8?B?bHM3eUZMbFRXczdMQ1krNGJNYXdtTnFjK2J4MlFSMy8yN0xoR3phNzhITjUx?=
 =?utf-8?B?N0gvV0NMd0oxaUI2TFdha2hjaDNNbmcxSm9CRzVhdm9RVDJ5S3VsWlNCQk1J?=
 =?utf-8?B?L0czMHVlNDJiSDh1Y2JGWlVqa2szUGlINmJNK1phVlUyRU1nOHlSMTJpS0NP?=
 =?utf-8?B?VXMwNUlHVWN1eXZVUHgxQ25XcWJRdmxsOHdHQjFsRzErUnE0ak5LeDBCNERH?=
 =?utf-8?B?RGc5M0x4RmZTNmQwbHllVEw2NkRkdmxNaHhaMEJCZEJrMkZ2M1ZOT2FXc2p6?=
 =?utf-8?B?UkFrZHY2YXhOOGphRU56OWNTOGhrZjVacCtYeHQ2eWgwb0x4dktVVnBVMzZh?=
 =?utf-8?B?L3FMQWJHaTJPWC9EMEh3WThaRlpXYjZtYlg4cVpyNEo0ak1kaktoeWFzR3V6?=
 =?utf-8?B?UlhraU1DRWZreFArKzFrZW5QSVY1K1hERDRvY2dCQVg1UmUwS2tsSUtIV2FG?=
 =?utf-8?B?aGJsKzJhbzIxWVljbTdWSUhVdXZqY0x3QzJVR3VOMUpmUUxUQkM5dU9BVWJt?=
 =?utf-8?B?OGhleUN0Z1NDWDJmMDNJdElOM29PclFUR1lCZ0VJSjU3bTg2aDE3N2ZjTUtZ?=
 =?utf-8?B?WTk0UXBpOWVuSWlyVEpsNkVsM3VFMnJRZlBHYkY2VzlZbVpDeTdwSjFKY0l3?=
 =?utf-8?B?YytxWGlaZ0tHdmtlcTNpK0JIcUhMOUZtalJXWVVlY3IyeHM1RnFidG4reW41?=
 =?utf-8?B?OWhoZkhKYlF0c3A2TVI2Z3BmNWYxYmo1V1EyMjZ3c3NQcHhrb1JDMmpVOE1F?=
 =?utf-8?B?R1FlaTEvSDl2Y3VlNjltWUZkbFA0ZmkrdFh5Q0U5ZjdPKzNHTkRscTBkNkxB?=
 =?utf-8?B?SFFNc2F5Q2RiMUlZaWhMT0R0SjNhNkZUMzRlSEVYdjRKYThrTEVGcER5RlpM?=
 =?utf-8?B?NHNBT1JESFJoYkRhUjlIcnhPWTBISDY0Nkc5ZUc3c1lKUis0eVZYZ0FnRnpX?=
 =?utf-8?B?cUlZMkE4RGRuaG80YkVKbGM5Um85OGdGck1yMjlXVmttR0RCWFM0SG5BczF3?=
 =?utf-8?B?MEZkZDZjQk5lNDdEdzhYTHdxNmxaOWppcWpCTGw5ZTZIN3RSTWFjR2sxcDJt?=
 =?utf-8?B?dGJiUVNoTHlnTS8vdDFaREsxVVd4d3ExMTB5VHhZTW5JRWxWUkJSdERWT09t?=
 =?utf-8?B?Z3RTTytWM08zUXhWb2VjTHljQ0paemxRSTd4SmJWVFFrcTZmb05IcnBsSlNK?=
 =?utf-8?B?WE9IRm1rdWV1SXRsUmpiM1dxNjBWTEJNczJHd0hJbUpHQUlEZ3hCWk41YkRR?=
 =?utf-8?B?KzBPSFplZ01GQWI2Y0t2U2h3V1ZlL1ZtaUlHM2VOR3pGUDlNUjV3UWQrWFVB?=
 =?utf-8?B?aDFIdDhxRTZJMXQvT1pzSGZoZ0RCd2ZUME1WMURiWEQwVkV6aWtsNUp3NEdj?=
 =?utf-8?B?TFRlMlFPWVJ6VitaQ1FSZi9JcVFJN25yUFdqYmIybDZlbWlKNlVUdDY5K2xE?=
 =?utf-8?B?UzNOQWd4T2dsV0NDMmE0aWJlMzZhM0djaWIxT281WUUwUVgyL2RQVHYrMVFC?=
 =?utf-8?B?aXlIQlNPdUNnN01STms1QlZtVm9wdFo3eUJ0WFV6L3c3QWwvd0Fhd1pSOG1P?=
 =?utf-8?B?N0I5UWMwbzd2eTFPRDRHMjVqZkt1TEhTT3YwcmNsZnN4MDhLb0NaenNRS3BX?=
 =?utf-8?B?QnRaZUl4K2dGdS9lRXJmeUFzYzN2eVZ1ZFZMaVBEUjU0QlF4elV0cHlLQVM0?=
 =?utf-8?B?NWJ0S2Q5cXpTSXVnTW5VRGVWMVVOdXJFRmF3SnhaOWtZNU1vYXVnRW5zc01y?=
 =?utf-8?Q?mJRzmmcYW7tFVIL9bw7LPfx9+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8414.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d451e5b0-e206-402f-23e8-08db8ea20399
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2023 13:04:29.8879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9g8dgArqqWGTObP6xwJlV8o8r79xdhdh6UGBJBWqYGRLSqmP+JoGXoDn+ODrAmMT0axxIyeejfT5Ps3xCh3GHvUlEokZT7MoXCqxeTo+5K8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690463084; x=1721999084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t/ggGUNDDHEclqG4yyFVm74mxq1afHIUxxpvt9WHHqY=;
 b=eW0uI2+L1HHs9z48MwS+ULE41uXfrcnx3cjUrH3hdvUtl4bjw7Mf9zLj
 sr1UIk31T8Acu5kZuEWsQNX5TWXnAD2EOkMd35wYtIZqEvGDKcYzgNLez
 d8bY8lnsKCuZGsW2XVpAD4RnyH//ruxx2f7PK9wc2YcpLLxn8tUwPFXOe
 eU+bx1mK8hW3GJIrr3mdLknsDCr3q/4OKNYBO6XrlxRQz55TuHcK4QLn0
 dc3voSjxSbFbkA0V84wPnZZ2LAifLCRMtlshDf0pmz5INtyAuEv/t9uCK
 6PVj1SeJbsiz7Pp4qYbwg3RSFuIbCoKWPvfv3Dq8riHgUbX5HXKzg8KSb
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eW0uI2+L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: Auxbus devices &
 driver for E822 TS
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25 July 2023 7:52 PM CEST, Nguyen, Anthony L wrote:
> 
> 
> 
> On 7/21/2023 8:44 AM, Michal Michalik wrote:
>> There is a problem in HW in E822-based devices leading to race
>> condition.
>> It might happen that, in order:
>> - PF0 (which owns the PHC) requests few timestamps,
>> - PF1 requests a timestamp,
>> - interrupt is being triggered and both PF0 and PF1 threads are woken
>> up,
>> - PF0 got one timestamp, still waiting for others so not going to sleep,
>> - PF1 gets it's timestamp, process it and go to sleep,
>> - PF1 requests a timestamp again,
>> - just before PF0 goes to sleep timestamp of PF1 appear,
>> - PF0 finishes all it's timestamps and go to sleep (PF1 also sleeping).
>> That leaves PF1 timestamp memory not read, which lead to blocking the
>> next interrupt from arriving.
>> 
>> Fix it by adding auxiliary devices and only one driver to handle all the
>> timestamps for all PF's by PHC owner. In the past each PF requested it's
>> own timestamps and process it from the start till the end which causes
>> problem described above. Currently each PF requests the timestamps as
>> before, but the actual reading of the completed timestamps is being done
>> by the PTP auxilary driver, which is registered by the PF which owns PHC.
> 
> WARNING: 'auxilary' may be misspelled - perhaps 'auxiliary'?
> 

Thanks, will fix it.

> ...
> 
>> +/**
>> + * ice_ptp_auxbus_create_id_table - Create auxiliary device ID table
>> + * @pf: Board private structure
>> + * @name: auxiliary bus driver name
>> + */
>> +static struct auxiliary_device_id *
>> +ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
>> +{
>> +	struct auxiliary_device_id *ids;
>> +
>> +	/* Second id left empty to terminate the array */
>> +	ids = (struct auxiliary_device_id *)
>> +	       devm_kcalloc(ice_pf_to_dev(pf), 2,
>> +			    sizeof(struct auxiliary_device_id), GFP_KERNEL);
> 
> This casting is no needed. Also, some void* casts below that aren't 
> needed either.
> 

Will remove all unnecessary castings [one (struct auxiliary_device_id *)
and two (void *)], thanks.

>> +	if (!ids)
>> +		return NULL;
>> +
>> +	snprintf(ids[0].name, sizeof(ids[0].name), "ice.%s", name);
>> +
>> +	return ids;
>> +}
>> +
>> +/**
>> + * ice_ptp_register_auxbus_driver - Register PTP auxiliary bus driver
>> + * @pf: Board private structure
>> + */
>> +static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
>> +{
>> +	struct auxiliary_driver *aux_driver;
>> +	struct ice_ptp *ptp;
>> +	struct device *dev;
>> +	char *name;
>> +	int err;
>> +
>> +	ptp = &pf->ptp;
>> +	dev = ice_pf_to_dev(pf);
>> +	aux_driver = &ptp->ports_owner.aux_driver;
>> +	INIT_LIST_HEAD(&ptp->ports_owner.ports);
>> +	mutex_init(&ptp->ports_owner.lock);
>> +	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
>> +			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
>> +			      ice_get_ptp_src_clock_index(&pf->hw));
>> +
>> +	aux_driver->name = name;
>> +	aux_driver->shutdown = ice_ptp_auxbus_shutdown;
>> +	aux_driver->suspend = ice_ptp_auxbus_suspend;
>> +	aux_driver->remove = ice_ptp_auxbus_remove;
>> +	aux_driver->resume = ice_ptp_auxbus_resume;
>> +	aux_driver->probe = ice_ptp_auxbus_probe;
>> +	aux_driver->id_table = ice_ptp_auxbus_create_id_table(pf, name);
>> +	if (!aux_driver->id_table)
>> +		return -ENOMEM;
>> +
>> +	err = auxiliary_driver_register(aux_driver);
>> +	if (err) {
>> +		devm_kfree(dev, (void *)aux_driver->id_table);
>> +		dev_err(dev, "Failed registering aux_driver, name <%s>\n",
>> +			name);
>> +	}
>> +
>> +	return err;
>> +}
>> +
>> +/**
>> + * ice_ptp_unregister_auxbus_driver - Unregister PTP auxiliary bus driver
>> + * @pf: Board private structure
>> + */
>> +static void ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
>> +{
>> +	struct auxiliary_driver *aux_driver = &pf->ptp.ports_owner.aux_driver;
>> +
>> +	auxiliary_driver_unregister(aux_driver);
>> +	devm_kfree(ice_pf_to_dev(pf), (void *)aux_driver->id_table);
>> +
>> +	mutex_destroy(&pf->ptp.ports_owner.lock);
>> +}
>> +
>> +/**
>>    * ice_ptp_prepare_for_reset - Prepare PTP for reset
>>    * @pf: Board private structure
>>    */
>> @@ -2652,7 +2890,15 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>>   	/* Release the global hardware lock */
>>   	ice_ptp_unlock(hw);
>>   
>> -	if (!ice_is_e810(hw)) {
>> +	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_ALL) {
>> +		/* The clock owner for this device type handles the timestamp
>> +		 * interrupt for all ports.
>> +		 */
>> +		ice_ptp_configure_tx_tstamp(pf, true);
>> +
>> +		/* React on all quads interrupts for E82x */
>> +		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
>> +
>>   		/* Enable quad interrupts */
>>   		err = ice_ptp_tx_ena_intr(pf, true, itr);
>>   		if (err)
>> @@ -2667,8 +2913,16 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>>   	/* Store the PTP clock index for other PFs */
>>   	ice_set_ptp_clock_index(pf);
>>   
>> -	return 0;
>> +	err = ice_ptp_register_auxbus_driver(pf);
>> +	if (err) {
>> +		dev_err(ice_pf_to_dev(pf), "Failed to register PTP auxbus driver");
>> +		goto err_aux;
>> +	}
>>   
>> +	return 0;
>> +err_aux:
>> +	ice_clear_ptp_clock_index(pf);
>> +	ptp_clock_unregister(pf->ptp.clock);
>>   err_clk:
>>   	pf->ptp.clock = NULL;
>>   err_exit:
>> @@ -2718,8 +2972,15 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>>   	case ICE_PHY_E810:
>>   		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
>>   	case ICE_PHY_E822:
>> +		/* Non-owner PFs don't react to any interrupts on E82x,
>> +		 * neither on own quad nor on others
>> +		 */
>> +		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
>> +			ice_ptp_configure_tx_tstamp(pf, false);
>> +			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
>> +		}
>>   		kthread_init_delayed_work(&ptp_port->ov_work,
>> -					  ice_ptp_wait_for_offsets);
>> +				ice_ptp_wait_for_offsets);
> 
> I believe the original alignment is correct/no need for this change.
> 

Agree, will remove it.

>>   
>>   		return ice_ptp_init_tx_e822(pf, &ptp_port->tx,
>>   					    ptp_port->port_num);
>> @@ -2729,6 +2990,102 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>>   }
>>   
>>   /**
>> + * ice_ptp_release_auxbus_device
>> + * @dev: device that utilizes the auxbus
>> + */
>> +static void ice_ptp_release_auxbus_device(struct device *dev)
>> +{
>> +	/* Doing nothing here, but handle to auxbux device must be satisfied */
>> +}
>> +
>> +/**
>> + * ice_ptp_create_auxbus_device - Create PTP auxiliary bus device
>> + * @pf: Board private structure
>> + */
>> +static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
>> +{
>> +	struct auxiliary_device *aux_dev;
>> +	struct ice_ptp *ptp;
>> +	struct device *dev;
>> +	char *name;
>> +	int err;
>> +	u32 id;
>> +
>> +	ptp = &pf->ptp;
>> +	id = ptp->port.port_num;
>> +	dev = ice_pf_to_dev(pf);
>> +
>> +	aux_dev = &ptp->port.aux_dev;
>> +
>> +	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
>> +			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
>> +			      ice_get_ptp_src_clock_index(&pf->hw));
>> +
>> +	aux_dev->name = name;
>> +	aux_dev->id = id;
>> +	aux_dev->dev.release = ice_ptp_release_auxbus_device;
>> +	aux_dev->dev.parent = ice_pf_to_dev(pf);
> 
> You already have dev as a local var.
> 

Nice eye Tony, will use the local one - thanks.

>> +
>> +	err = auxiliary_device_init(aux_dev);
>> +	if (err)
>> +		goto aux_err;
>> +
>> +	err = auxiliary_device_add(aux_dev);
>> +	if (err) {
>> +		auxiliary_device_uninit(aux_dev);
>> +		goto aux_err;
>> +	}
>> +
>> +	return 0;
>> +aux_err:
>> +	dev_err(ice_pf_to_dev(pf), "Failed to create PTP auxiliary bus device <%s>\n",
>> +		name);
> 
> Same here.
>

Will use local.

Thanks,
M^2

>> +	devm_kfree(dev, name);
>> +	return err;
>> +}
>> +
>> +/**
>> + * ice_ptp_remove_auxbus_device - Remove PTP auxiliary bus device
>> + * @pf: Board private structure
>> + */
>> +static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
>> +{
>> +	struct auxiliary_device *aux_dev = &pf->ptp.port.aux_dev;
>> +
>> +	auxiliary_device_delete(aux_dev);
>> +	auxiliary_device_uninit(aux_dev);
>> +
>> +	memset(aux_dev, 0, sizeof(*aux_dev));
>> +}
>> +
>> +/**
>> + * ice_ptp_init_tx_interrupt_mode - Initialize device Tx interrupt mode
>> + * @pf: Board private structure
>> + *
>> + * Initialize the Tx timestamp interrupt mode for this device. For most device
>> + * types, each PF processes the interrupt and manages its own timestamps. For
>> + * E822-based devices, only the clock owner processes the timestamps. Other
>> + * PFs disable the interrupt and do not process their own timestamps.
>> + */
>> +static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
>> +{
>> +	switch (pf->hw.phy_model) {
>> +	case ICE_PHY_E822:
>> +		/* E822 based PHY has the clock owner process the interrupt
>> +		 * for all ports.
>> +		 */
>> +		if (ice_pf_src_tmr_owned(pf))
>> +			pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_ALL;
>> +		else
>> +			pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_NONE;
>> +		break;
>> +	default:
>> +		/* other PHY types handle their own Tx interrupt */
>> +		pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_SELF;
>> +	}
>> +}
>> +
>> +/**
>>    * ice_ptp_init - Initialize PTP hardware clock support
>>    * @pf: Board private structure
>>    *
>> @@ -2748,10 +3105,12 @@ void ice_ptp_init(struct ice_pf *pf)
>>   
>>   	ice_ptp_init_phy_model(hw);
>>   
>> +	ice_ptp_init_tx_interrupt_mode(pf);
>> +
>>   	/* If this function owns the clock hardware, it must allocate and
>>   	 * configure the PTP clock device to represent it.
>>   	 */
>> -	if (hw->func_caps.ts_func_info.src_tmr_owned) {
>> +	if (ice_pf_src_tmr_owned(pf)) {
>>   		err = ice_ptp_init_owner(pf);
>>   		if (err)
>>   			goto err;
>> @@ -2770,6 +3129,10 @@ void ice_ptp_init(struct ice_pf *pf)
>>   	if (err)
>>   		goto err;
>>   
>> +	err = ice_ptp_create_auxbus_device(pf);
>> +	if (err)
>> +		goto err;
>> +
>>   	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
>>   	return;
>>   
>> @@ -2798,6 +3161,8 @@ void ice_ptp_release(struct ice_pf *pf)
>>   	/* Disable timestamping for both Tx and Rx */
>>   	ice_ptp_cfg_timestamp(pf, false);
>>   
>> +	ice_ptp_remove_auxbus_device(pf);
>> +
>>   	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
>>   
>>   	clear_bit(ICE_FLAG_PTP, pf->flags);
>> @@ -2821,5 +3186,7 @@ void ice_ptp_release(struct ice_pf *pf)
>>   	ptp_clock_unregister(pf->ptp.clock);
>>   	pf->ptp.clock = NULL;
>>   
>> +	ice_ptp_unregister_auxbus_driver(pf);
>> +
>>   	dev_info(ice_pf_to_dev(pf), "Removed PTP clock\n");
>>   }
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
>> index 995a570..d94c223 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
>> @@ -157,7 +157,9 @@ struct ice_ptp_tx {
>>    * ready for PTP functionality. It is used to track the port initialization
>>    * and determine when the port's PHY offset is valid.
>>    *
>> + * @list_member: list member structure of auxiliary device
>>    * @tx: Tx timestamp tracking for this port
>> + * @aux_dev: auxiliary device associated with this port
>>    * @ov_work: delayed work task for tracking when PHY offset is valid
>>    * @ps_lock: mutex used to protect the overall PTP PHY start procedure
>>    * @link_up: indicates whether the link is up
>> @@ -165,7 +167,9 @@ struct ice_ptp_tx {
>>    * @port_num: the port number this structure represents
>>    */
>>   struct ice_ptp_port {
>> +	struct list_head list_member;
>>   	struct ice_ptp_tx tx;
>> +	struct auxiliary_device aux_dev;
>>   	struct kthread_delayed_work ov_work;
>>   	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
>>   	bool link_up;
>> @@ -173,11 +177,35 @@ struct ice_ptp_port {
>>   	u8 port_num;
>>   };
>>   
>> +enum ice_ptp_tx_interrupt {
>> +	ICE_PTP_TX_INTERRUPT_NONE = 0,
>> +	ICE_PTP_TX_INTERRUPT_SELF,
>> +	ICE_PTP_TX_INTERRUPT_ALL,
>> +};
>> +
>> +/**
>> + * struct ice_ptp_port_owner - data used to handle the PTP clock owner info
>> + *
>> + * This structure contains data necessary for the PTP clock owner to correctly
>> + * handle the timestamping feature for all attached ports.
>> + *
>> + * @aux_driver: the structure carring the auxiliary driver information
>> + * @ports: list of porst handled by this port owner
>> + * @lock: protect access to ports list
>> + */
>> +struct ice_ptp_port_owner {
>> +	struct auxiliary_driver aux_driver;
>> +	struct list_head ports;
>> +	struct mutex lock;
>> +};
>> +
>>   #define GLTSYN_TGT_H_IDX_MAX		4
>>   
>>   /**
>>    * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
>> + * @tx_interrupt_mode: the TX interrupt mode for the PTP clock
>>    * @port: data for the PHY port initialization procedure
>> + * @ports_owner: data for the auxiliary driver owner
>>    * @work: delayed work function for periodic tasks
>>    * @cached_phc_time: a cached copy of the PHC time for timestamp extension
>>    * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
>> @@ -197,7 +225,9 @@ struct ice_ptp_port {
>>    * @late_cached_phc_updates: number of times cached PHC update is late
>>    */
>>   struct ice_ptp {
>> +	enum ice_ptp_tx_interrupt tx_interrupt_mode;
>>   	struct ice_ptp_port port;
>> +	struct ice_ptp_port_owner ports_owner;
>>   	struct kthread_delayed_work work;
>>   	u64 cached_phc_time;
>>   	unsigned long cached_phc_jiffies;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
