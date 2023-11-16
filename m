Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8F97EDCA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 09:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0508B421CE;
	Thu, 16 Nov 2023 08:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0508B421CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700122329;
	bh=b91rnSv8VTNmoi18FFkKg0IOP/PI4lro9Ze8fdH0/JE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iCQIWjuIc2RlLzOUf0t4pCeaUNlWAycHqMTv/vR/ArZ1OfqUX+sv/qHzvC7ncvjre
	 WsEp7wOHtaRrTL7szNWeuqWskCH4++7a3qCr5QY+6+E8zkVjzoFGsfR7Fhgi+9f87t
	 RSYascRCJTJ64l/eF5TIr6s/ddD/CKMLr2ucfEoSEtazm8Q4bOSJJKY/1PAImITo36
	 akBzBjuZTVCa7q2BEzYM9Wyi1AiDgfOeTo7ikHec9itUHsf5Bm79OfZEmd+e6OPRaz
	 5BFjHSVMyo9n874zCjAscI+n8FLcKJ4s1V2YGMI1UwlD0cBWmZFxjzZn0K+aa9GZ4C
	 5niBwyYO4ecJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0WOsKSkct_Hs; Thu, 16 Nov 2023 08:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4BD441FE1;
	Thu, 16 Nov 2023 08:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4BD441FE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C83241BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E48661074
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E48661074
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNcujTcuqWzK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 08:12:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38A1261071
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38A1261071
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="370399891"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="370399891"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 00:11:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; 
   d="scan'208";a="6446948"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 00:11:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:11:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 00:11:58 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 00:11:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ktcyZMAA48f2C5w0bZLtWd9wUrgVY2dLm++1Oy8Y2T3mkzkRFzKw4sBDGxMRU/nzpwtk/RkBkdESxvHbDtUlDJndtZKOde/omJpOhFiyfKhcl7e1m3Ul3tr2ra1fRnTdwPYcdqu5Lvjqumcyu580jVjT+I3kgXNPVL8sxbFCvLld664UQvwxPLJLWXz2rmd68jt7IFOpmn7BNWb8ejiOnpKhDUG/dOQsg3yq2v+870Xj6t5AJvoaiww1x/R+ejic0ew3vESP/3nO0wyqccb+gRUeojkWKVCOkfMN7YHZm3M/3B4s2D1lf8VkYAgx744C7x0ovh9aR1Bylrd450g+UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3FtVA2kCMIohT+SRlDBPqyheRH8Cy/N9pXgyqZ/APVk=;
 b=aaZzH1/aNXRV8qhjAJs04SUqeSDIWKzu2EJRXBkRf/BoF33WswkISdkvrr1eskOqAdjgthCH2fUwEheMCSn2nK0Bejeo6iVPP7SaWx1RuZJo9SKGwaysbJqIaKQ4gkaaUl2/sE4amWPvOM3HqdolJOX8KfZyGklzFwDSZAhrnJr4JgTIzOPzPBKsw/lrvoMoTTnU2OFVfiayLQEcN6MapOIXNTZTmj9g/j+1B066lSTgdS6HjSMH0OnSH+6mYGolXt53dykWo610UiT9B/owD2UI7/oqGzDauyVEIj/ZCOHcI+/zCjMIUAjf+jqfWO6zZHyaZkV60K9Mor9nyekVXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA0PR11MB4589.namprd11.prod.outlook.com (2603:10b6:806:9a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 08:11:54 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2%5]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 08:11:54 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Re-enable timestamping
 correctly after reset
Thread-Index: AQHZ/DLMkw6CNhlNNUibCH2+1STnvrB80E9g
Date: Thu, 16 Nov 2023 08:11:54 +0000
Message-ID: <BL0PR11MB312278795A8050B1A366852EBDB0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231011110411.204700-1-karol.kolacinski@intel.com>
In-Reply-To: <20231011110411.204700-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA0PR11MB4589:EE_
x-ms-office365-filtering-correlation-id: 01b1b2c4-68a0-4658-576f-08dbe67bb1d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y6OcOKgRdr4Cde7zNF8omjDfE9XUXUBrCad4OC4qycYB1CH4UDTT50aJy3uQNkcKAWVRWnvS/2ZN+8f84ptIVys+5oxquoMSXrhTWq4NW6wm7CqQB7T2QL71HdzOH4M08rjcAlgHhpYfbuPiTZ0hXPsUUzNkW5e96oEVJFXLb/GHEY1ZAb2R3Jmi+lzAVz6HTbFpizbaj2Qi8fC+8UNchHsGxCYMQh57oygzDAO1gg/TkvbsVzHfRLhyWhqb7/veQkK5WTnHPYtHJUuR+ry7N+WsdCJ3D0GRAmKB68c1u56+k1jXMOyRclxbiTl7fq7DKRxDbAyHDji5pWOvWGgtUc7BazviU2qQM3pyOiv8iCkJQnDZowoP/a6rgI7+2ONumITF8PfR+wTu6yhk7++c5dWmgIM9yG/LNJb+gM22lvKZJ3jOgWTFsI/lqUWsznTVCdfRBC0Tb2X+sFBE/afOh+91wRbZ7+cB2OhkcMh3jNuuZuR2+rXaP1kbfSASmh5d1dbmhxss3wPO/VBHS3vKG+JGPCm+zV7yC55N5IFOc566Deutdz302OPMXFWsU4ZM1Yslq/B8cRgAdMax+EfoMVUshUzGAoWF/2N5yeuFTU0Y7EQaSE44QVL52/YrTj13
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(346002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(71200400001)(76116006)(52536014)(4326008)(110136005)(9686003)(54906003)(64756008)(316002)(66946007)(6506007)(7696005)(53546011)(66476007)(66446008)(66556008)(8936002)(8676002)(478600001)(38070700009)(2906002)(4744005)(55016003)(33656002)(38100700002)(41300700001)(26005)(122000001)(107886003)(83380400001)(86362001)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OqG1rs9bMeeecom0VJlfW2BqbqubXmXDpGDaqxiB4v9iVt0nxKembZYl2XWX?=
 =?us-ascii?Q?CMNkyAtMLd0WZ+Wi31KDR5LJhUOHa0qCc/h+gd7OJUa5Gi7iu5JATOsScwyt?=
 =?us-ascii?Q?VmZqTmLF3hFsrYaCBEh57WcMVrDXaTv+2G+8PfjFqRf5C/imJyEAt0D5TIl9?=
 =?us-ascii?Q?vmzqH+FRRXVNqdRTx+zBJTeZ1RVsNKAfRkOnJB68S6tVVHUZBg1wFkc1aOD/?=
 =?us-ascii?Q?rqSZlGziBbyt3YQ2a89H2cs+uRCaCnXjoknl14wrKQmwb1aQxuRXJrd4xpNu?=
 =?us-ascii?Q?gL15SX8s4UCso3B3VCSxl7SXp832IXoSZ4rydPTIbNINWVQzELtQ8ZjxvYwi?=
 =?us-ascii?Q?AnOajBQojRTwvoVZpSi61zS3nQ+DiDI+2KO2RJXYGUsKvRUVcpUNxWYXPBJx?=
 =?us-ascii?Q?3NljfCkBNKyY9XllswFRoEV8RssQOObOARrOlG2wW82AqVrTzzI8q8rTyxGc?=
 =?us-ascii?Q?e6oj2It6W+iRo+Up1F5UnJx+qKLiysWccwxyLcXFhvPILlw3fImE2kuh4kSH?=
 =?us-ascii?Q?g9BzQxcW1DffKRV0+6oxn5vynf4Az/PaihArCYlD/T46z+EtshivdPDJnJwc?=
 =?us-ascii?Q?+q2/DSGBKNt/0DpQrE7KJ4nyxALZYONKzyrO0ZC8ZiJrFbwhEWZQc1Y3wAU1?=
 =?us-ascii?Q?fjbmYFVU7ds9XgHVl1u4sFxmIUh2A6w1CX0IuLCehyAYTfDm0e/I9K/PuVlo?=
 =?us-ascii?Q?AM8T8iuYpjeoNKZI01TQoDs+gKa0+srxB1smU2Lav5B/TMNVaDmpXtMx1MgL?=
 =?us-ascii?Q?jJ44kCHcVqG351gn+/8PH3RRWGnajbay4ORIPeLB2haz/qgyBweryPNpUddI?=
 =?us-ascii?Q?fBL7DKRY+LqH2nnzFvVdZ7U5zBB2oaUV47anFxXcODOTPkaXu3P6hvjlFJzD?=
 =?us-ascii?Q?k3PJFl4Zb4HKoW5yM9xu199OYf4lCujeigZ/Ywjy1WJEOpdfnuVvUGahrUoS?=
 =?us-ascii?Q?kARCZWBAgPPngxDPtddAznd2jqF2LJhwmjZFDkqJCAiq/uVRbHOnAmRgcUF+?=
 =?us-ascii?Q?itxiqRDSqxN1p8LaFRclM7puawVaKhPxFo5cYiz5heilwuW2IRQf5pAYP2M6?=
 =?us-ascii?Q?mJTlasUCgv+eQSbR5bI5wQ1UPqM7+gWxWwGDnAI156WF2pY/CKdsjAI2nBRl?=
 =?us-ascii?Q?IVDCLqDUJqv9VhPaj+FyRIiV831+pMzBub/hpGFNOnv2yVFbZduPqeJz3OdO?=
 =?us-ascii?Q?FcdZbDx0W6/DgIlIjsVTJkhI6ulz6UhhGbLmmE+zzIWwRmNXnmaa924Pgnk4?=
 =?us-ascii?Q?KnbhWyt74tjAI9+ZEkvZVN+Yp9iqX6lNZ2h/u7yuMtub6RE8J2/BU97TIqpZ?=
 =?us-ascii?Q?Vo3dtzoXfQhhcHH1pQZrEaOBdSkqlr1ZNCDFbqVlA4UWCIh5kZXF1eucgk+P?=
 =?us-ascii?Q?hKidFpvFkBILIBkG0hWcKlntZ2kX4CnNozwI171bmfpQv+u0SYnTKtLsfYDe?=
 =?us-ascii?Q?ykpk8G1WWIL4erZPNpb7EmXYDKmu9D2AomH8YhJqh9JukgwQhsECWqDq/GMM?=
 =?us-ascii?Q?pNa2t0b7ckh65EujRkb7Rs8cR45fEHFL8Nnf3EysYHlPDCg15ahPy4JsHwQp?=
 =?us-ascii?Q?PbJXMifI2Ckn6hNemMcY7+aCa5Dz+Xyu0OoXpfzylJKtO8uBLzpPzxloBMxl?=
 =?us-ascii?Q?Dw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01b1b2c4-68a0-4658-576f-08dbe67bb1d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 08:11:54.1553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C6KFrT94rqYY3MsVG/0H4ZwBlBNwQ3T7Hb86M4++nlkZ3lQX/Does+XDT4m/2dEJiHvYPnireSR8+2EzmQz81PKC07DnCPA1P7Maa1urrkpiXk2taFxvikJXyE5lstPI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700122321; x=1731658321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dbuYdLSsCwsj0wowTSYsqaE2GkrhfrIEOcqnZnb4dUM=;
 b=eaaKJ+myqilKdJ5OB06Qd2ZeTYmvcP+i44NtjlKmPo7VfGUGeEB0j4Fs
 MvjiagbRqJpo+v4ZZJdcyaWkeMda1CrraIkZXVPpHnsLbXXFah+uP90SC
 nlNmxdfrgUpIGtjcniKcSFH1W30NaEyGsn0inLW5wGft7SGABk9NAdcm7
 VgllZ02hnBWVEXBZ7Uo6IEtpGvfwRqDT2pjNCRp4JHKiiNXKkMbAkrJjl
 Op4p/3HlIUIguGjFSeWUTqsqDfHcajWPJM+Xba19a4EfQnIWHBgIy8PGC
 gu5oLLeVTf3FZobOGyghnNdQ1Z20Ro+SfMBJ/wbDsYecQLf6QNPeL9AhO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eaaKJ+my
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Re-enable timestamping
 correctly after reset
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
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol Kolacinski
> Sent: Wednesday, October 11, 2023 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Re-enable timestamping correctly after reset
>
> During reset, TX_TSYN interrupt should be processed as it may process
> timestamps in brief moments before and after reset.
> Timestamping should be enabled on VSIs at the end of reset procedure.
> On ice_get_phy_tx_tstamp_ready error, interrupt should not be rearmed,
> because error only happens on resets.
>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 22 +++++++++++++---------
>  2 files changed, 14 insertions(+), 10 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
