Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EA9678EE5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 04:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 672D940BAD;
	Tue, 24 Jan 2023 03:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 672D940BAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674530192;
	bh=rPyRJU00GgHaFwVKeCSel2MpA8VED3/U7xFxVU43O2w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2+Si56L870Ynavsn6HDnNkmMtbjyxR1hwna/i3s6LR7Va2J4YKDlZjOjXuosgpADf
	 kLUqqwffgLRxIC1dbWFG/Uplo4vXjhvIhoQ3KwF2Vp/FHwpEob/AcHva1F6MJlCcWA
	 0wbANUcnebuNO+mbPeo7wvAUuGCtleaNpibHa9mb4MtBqFw/AwlH54BXZAORb62naq
	 E4S8m1qSnW0rYlimeN4fmsjgJR1fE+uhjkvgrdM/Jlp2Ry3QTXrCUwIGHgBZBc7URp
	 TtQvWMjhjdsqUmevh+sy7GsbvIXrY39NCQnF+7X32ZskzyoG6IEXE5ijRfUGNj2PCB
	 OglwMZFwMZBgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kg837JFd1fvk; Tue, 24 Jan 2023 03:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 570DA40A18;
	Tue, 24 Jan 2023 03:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 570DA40A18
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4EFE1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AAFBC4174A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:16:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAFBC4174A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMF2S90APpvv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 03:16:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C780741754
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C780741754
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:16:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="324896849"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="324896849"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 19:16:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="785921933"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="785921933"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 23 Jan 2023 19:16:23 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 19:16:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 19:16:23 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 19:16:23 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 19:16:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OD8sk6xG705X2+Zg+LEZa+S4GNCcJycYfwXiKaGBAkL1E/d42Sj6jxtvyi5rvC3Qr38dLAI9oUiTyJJrCcVLhZ8hq42UjOdDvXxGFWMh6VsVA2GYYkesNynP8jfhk0o8WbdSO1+KGth9x5848z0FqvypBa13Prx/cx5ROYD8ksYreUMRsdJ8G9y081/xJA6JfwaeEZYtstyw4oJlOJ4Knl9IsrIbRrign10Jo6TMyTNtT5fngFr34RDnxOHOhDvvhUGUtcIb/v6RPiv33OeRTrYZUDjuP+cABZXMBHKZj8WSFpi6m+/HFdIEcp1iCsUBNHjhNui+8uO60mMs6yPnnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgiMfHxVA3VzZFfY+OR89Z0RyQYfznncaiAXekTqj04=;
 b=b4BifutezbDruGWG3jQUnBInl42i6tb6VPNhh2tMlHxZ5ttaDluMbcz5OWuqoL2/XJiaBaqg4pZ+XDT672oxJOWG/DdXKOtneU1R+n6hEheN2cwqq+jPCtutuUEfaLkEBUnIyfXWSU1gu97Bps+hAawsp+Kdx0GdeCnunX1EShRMc7QvGlOgKdsOpPSUlb06k9SFB2iqknbd9UDW96kfYvX4b6qYKKvrjT44VkX8d/b2KnhrFsD8xU5Wgsd9yNGkabJxfFff2bniLJAY1YF71/siTkpfk79FiUjl7CYg/Ft8hchhtrM6mmW3hw4xpjFmCk8nlusrUJGAxWywCNeCjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 03:16:20 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 03:16:20 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 04/13] ice: move vsi_type
 assignment from ice_vsi_alloc to ice_vsi_cfg
Thread-Index: AQHZK6PQ1/1VHsyuXkypj+qA0/Dh866s7QPw
Date: Tue, 24 Jan 2023 03:16:20 +0000
Message-ID: <BYAPR11MB3367C8D61044FB35A8A33921FCC99@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-5-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-5-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SA3PR11MB7554:EE_
x-ms-office365-filtering-correlation-id: 3bd7f038-e0cd-4976-2d8b-08dafdb95d75
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vU06qMnjFCcrKUC0KTftfXFK7d1232L1cr92WMSmpMFLQhjoiwZFzOe9SOffXa+6Ac1OVKlR6RDw31ynOB3EmsiDVim0RCfiWz8hmy+OcjRPlhlFdfwi2mWHq09gAUa7370IY8qcZqv4msVG06431eduzjRJlW8SLluebTuh0ow4H5hB5KNvz+e3qYI50AKl6UiziZzCAD+HSf9ochddc2UVAwBpGatUu2ViW2WkhiJQ+82YfXMT8D4J6Agj6x7Nt6mLWLnAnaxEurUedFAX9i6hCRSIlK+9Jdm9s5wpl+nfThVPUI7rfv4gOOeOdLgiJBJx28+7ZI+Xnv7yCaRSIBZYpu24tRx7rToQ3cQXAmT79r+L88yjwtXmQhJC3/2Fs05vOLMuBa4GrBqzLDL9eb3v1WwGTT804a/RgkHBziH0SzfpiTq8QtvSmGF7FFaUN+9Vw+MI9N9POqxGaAK0fYTXPLfoJr2BD20xgHArDsfGGTMpYYI0v1nprCw1rmBQi7E1ncDIO3EYRM4E9VseEPLhXVpldMxjI0l+IbfV+m+Ni8m0VROIteoYy2yR5uVaq8GDvcTbmYR27yuGIJ8ROawnZN4t1vpbk2DWQma7rAWQzbsLrOQBMguu5KHPls0Cv23bhqtD2/tX39g9jvt5/5OZ9NtuS1LUff8hVvxO0sdr2zDd4DoBbFAtfD7QqYuaiGUEECCtG8d5J1EiOnrGWQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(136003)(396003)(39860400002)(451199015)(2906002)(38070700005)(5660300002)(38100700002)(82960400001)(52536014)(8936002)(4326008)(41300700001)(122000001)(83380400001)(86362001)(33656002)(66446008)(71200400001)(478600001)(7696005)(66476007)(110136005)(53546011)(6506007)(26005)(186003)(55016003)(316002)(9686003)(8676002)(76116006)(66946007)(64756008)(107886003)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3eylcuoHsrKtJ4xE6Nu3tqsauMZgMIFd7VvhT0G1xfpDnz5KM+a8BYqMD8Kw?=
 =?us-ascii?Q?u+dPSQmxDr6RqowQCPxEAoj0x4I7RI/1/yzJiDNDSDOlQZbf6ODyD9T2B0mK?=
 =?us-ascii?Q?t4BX48lP//IAnC8ZI9LWX/OTw5k3WyCNQzB7+zgoJ9kxofUfj5ESY4za44xN?=
 =?us-ascii?Q?c9zLqhaDDxw+jZQ9747KBx+QfH4ekwtRs5b+Kcyst8UuvWzgxgUJSmOQTDr4?=
 =?us-ascii?Q?83EKTpBluUIempCA0CqHcoPSvmIaaApxGHc5As34aovNrqAHFC/AavUlX3JD?=
 =?us-ascii?Q?GqK1eHrZqR1yAS58YMwcekGJf6me2qX09Ya1ki6VA9enVBFr0j06XXjqR2yr?=
 =?us-ascii?Q?wX2EljjuCbU+PeZDRr7OqXmYRPZt0D6fduiVx31sMkHuV5qtCFCwPo9tC/EE?=
 =?us-ascii?Q?A0H4vZr/rk6sN30rEDDeQV/gxE7PKIUj/ZjDhauuabecn/HzCVc+VZO5WlRA?=
 =?us-ascii?Q?zelrOuFHuVO0pgjHgJfvs1pKznmWYoJiRBKI7X2C85+XKuDPKB94vabk9KED?=
 =?us-ascii?Q?sAwnnJruwYfYPkmjBoGXGqLRBPxOCMTnOlfnkjXGWYr/Ony5sRlCM+ccwAza?=
 =?us-ascii?Q?f0bI4CA9yLaC5ZhoPgJsf4Pt3u6mUbGR3iv0MC2RGcxbdk25yvimW+5ySmxu?=
 =?us-ascii?Q?SehIDaizqAq3n2JcTnjE7x/fRONoZrvjwJEmlVz4Jvv9xViF62OktMn0kuQm?=
 =?us-ascii?Q?uQ20SbcJ18b56RQbQJ0LQFdvSvayPjDCv4iTWYWOKRdDqES4zMkVL95chIBR?=
 =?us-ascii?Q?orm2uPA1+1c81ipfXdtDB0GMBmHz/7HTP9Ls5qCAEXW4um4Sr2hNXEzYFywt?=
 =?us-ascii?Q?by+qEjeQqMXF+5tm0yAowK7hF6aAF2ZIew+wiWa4BC2o+T8UPlxHUCsFAS2U?=
 =?us-ascii?Q?F0AodXggujGcj2V8RxLeftc3lkd8giMqzgjpo7C04SjGtFpwRJzvOt/CkvWz?=
 =?us-ascii?Q?StyX2Q/SGBapT4gj/a2aHSzauP9ObrshmORGZV4sOpBrMEN8Sb9yv7eSMyqV?=
 =?us-ascii?Q?wVWGBTwDD/AozlpdbTGS19Nf1Cg0ZldRVg2jVBRh5AaFbRz9GP0JQ8X/+upb?=
 =?us-ascii?Q?fAhHV1lWZZWm+G1ySkZxirGKoIAHCm45sAXRVQtuUwzDxkT4VTtHQLtjl/dw?=
 =?us-ascii?Q?3GBwstvNFb2wF6BsX4LC+SNM6dwdpn/pyHA2kNZQutMEDSIdAia68xiZsdbr?=
 =?us-ascii?Q?TbH2LE2geJaPfXLpO/ReQ5inq5lM1MiBjTk3zO5mNj4JdXZdx65Yhttm45e9?=
 =?us-ascii?Q?5EAyJbn8tu4hOzS/fTZXHS6rG698q0s9vCJFqycpHDto2AuH/CM5wvOZDoiz?=
 =?us-ascii?Q?ECbjcmnc/HLsQ5hA2Stf58QUO3UV+LXLIktdGyXe1uEL/K6vILsZIUEMUaU9?=
 =?us-ascii?Q?yoAgcAMfqY+PzZEFUHuos8l5FCAYfpojAO56JnF3E27wH51o6VVLdV2VMiTd?=
 =?us-ascii?Q?d5x9mrb8CZ+gWZTAE9FppQIe2mez8R20T9HOKhQD26CJDfd2C9VNFdR60M6f?=
 =?us-ascii?Q?sqipYFfXvQUVQEcKOf/FOfKKOnnXeYjD6fSVNqBtAixtxGvG3D3N6hdkCMoV?=
 =?us-ascii?Q?XopD8P2L6DOkwuJ+sLuwRV8BvYGU3XxqK2LSVxhh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bd7f038-e0cd-4976-2d8b-08dafdb95d75
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 03:16:20.4615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BpYky6W0TUCcgYft1FaYnLiGWFWbRzvLoVQIZ26iIut0aUSNzeci/PnKTPKJnVmOOLFF7L7fTaDQKxZtoSwDDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7554
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674530184; x=1706066184;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hK9ooG1UYcIoAXknjJEQF1w54yDjG6kStYKtimpZxJQ=;
 b=RXgiZRg/4qguCrsa213sajnVGxXbIghKeB2xDUzK4fW/t9BFaYaQaW+l
 ltUxe8HLCXiXGU2lXBUEmKa+upX1KTWGtIdv8L5rXociRjZUDd14DHFHj
 6UolQVEr0/kV7VOvAjIHtFb/KgYvDW2J2O7sIr2Q4OxeQyn/wM+11Mew0
 3FTWY6U4s+IHSEvM6ud5eb/lk3+DZZdlXbmTFk1ws6oAIaiPKD5OeOrNY
 f3LD89yQzGWrT8YGszGZXFRubGPmMK/fJqQGn/+hjFi1hlnXHGT58nvPY
 xgyF9pj41H0sjWgkIzNxXe3Eoo1uWdxeEct448r8M9/eHQKd4qRlmDJqz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RXgiZRg/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/13] ice: move vsi_type
 assignment from ice_vsi_alloc to ice_vsi_cfg
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, January 19, 2023 6:47 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 04/13] ice: move vsi_type
> assignment from ice_vsi_alloc to ice_vsi_cfg
> 
> The ice_vsi_alloc and ice_vsi_cfg functions are used together to allocate and
> configure a new VSI, called as part of the ice_vsi_setup function.
> 
> In the future with the addition of the subfunction code the ice driver will
> want to be able to allocate a VSI while delaying the configuration to a later
> point of the port activation.
> 
> Currently this requires that the port code know what type of VSI should be
> allocated. This is required because ice_vsi_alloc assigns the VSI type.
> 
> Refactor the ice_vsi_alloc and ice_vsi_cfg functions so that VSI type
> assignment isn't done until the configuration stage. This will allow the devlink
> port addition logic to reserve a VSI as early as possible before the type of the
> port is known. In this way, the port add can fail in the event that all hardware
> VSI resources are exhausted.
> 
> Since the ice_vsi_cfg function already takes the ice_vsi_cfg_params
> structure, this is relatively straight forward.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * Re-order after new patch
> * Changed to take into account ice_vsi_cfg_params
> 
>  drivers/net/ethernet/intel/ice/ice_lib.c | 51 ++++++++++++------------
>  1 file changed, 26 insertions(+), 25 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
