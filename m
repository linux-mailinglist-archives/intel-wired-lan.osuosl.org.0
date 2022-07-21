Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D41457D33B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 20:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6CC760BFD;
	Thu, 21 Jul 2022 18:22:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6CC760BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658427751;
	bh=egsEnaymVbH+wV+2G6eu3oU92Ul2bBxfYSXSrX4JMQQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M5l25fhqZ2K+oz2TSCtODmGoVj56tjHXo0GYVGMqwOAdKEHU35p1tsZKNxSLNR6QT
	 QG/oEfj8xjxo5I/72CILnKNt+2D8Mh7Ej4YbZSLhgpXOjDd3gwMnSpKaKkKdXmdTAM
	 wrLnPLh9x4/X3fCPr94mFpoqUmN5vQEP5hKsdMBDvbdMe1sYLh+75zkrjXBuHQ70xD
	 925rjju5B8tDwPBpHGONdzKtXbdwCHdYVU9R1gKXcKcQsdJp6Ej/Gzv12pzL11jf2U
	 SGXR0/2Ovdoi2kULTGs5B6+OMKhsC/sL74zZd79sk8y2vHPsdwjhmHuedhRxvQAHVV
	 y+D9QzPOdnufg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPNq1_yTrcmW; Thu, 21 Jul 2022 18:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B15D360BC6;
	Thu, 21 Jul 2022 18:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B15D360BC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5331BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 18:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02C014018A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 18:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02C014018A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-WfC9Labp6C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 18:22:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29036400D8
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29036400D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 18:22:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="287148048"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="287148048"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 11:22:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="573857510"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 21 Jul 2022 11:22:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 11:22:21 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 11:22:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 11:22:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 11:22:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRWsq28KOlsHDBWNJgi/0d8ucaf6RkfRo7QC9hYOwgFsQQAoBuPo34tKmp5JAH8BslWrBANOKbaEi/nFcRKk8VfLn4kPuNarS2cV8jrkLzcQ5+qgOLKIwoOZQMGU9Asox7pzhYmsDTf3caI06qHjiyqXLIDx4acm8DURFltXbwxFUKYaq5YCFRNOxF+ygUe2LzcumAQzhN9jfzgEgb64saxDPibjxkSqfL8H66RDpIFfUVdRWekkoEDuKzxgHHs15s4dGuECNsJ0dbNtGaeikpYOHbPR8dYB7fsHnrdienx/ZvKvje8h8xZFsc3kYlvQ8tQWYiEzCZUeQNuEgk1hNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+meTf3Ng5EtX56d5UVQ7Fy74Uvff3y9e2w+Fimd6qDA=;
 b=CwRwSK1TTRcPfmQUDUC1RmjUcFNAq4YjkQh6F88XdByx0nIzgJv7vSHqW5ND3VLpLUjfKZLErGr75DFZqz8eU3zSD4h0WLeRlAIqGph7GUrMHWjGvZmce8Kjqyo7etuu0pSDPhl6cIL7kWN54qsnOzDk898NDLgYUUitDS0XBtFFhMfvDHe58CyquAf2PkXSFaN43K6pKcKW4NPAlWn73Lbw78zc1ROO0JdNwoift9BPjQcAA8mEDm7/YxsapCnDe2xPZer7yt0hMH0KnfS/YAcOHMTVPaerrnzu7LEDighNsaF9h1wl7L70nzxquHHbfg1ow9SxV0PALl/NpeaAiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by DM5PR11MB1771.namprd11.prod.outlook.com (2603:10b6:3:113::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.20; Thu, 21 Jul
 2022 18:22:19 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 18:22:19 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-next 2/2] ice: add write
 functionality for GNSS TTY
Thread-Index: AQHYh942j955DJsm/UiOgyzWP2gheq2JTUEA
Date: Thu, 21 Jul 2022 18:22:18 +0000
Message-ID: <CO1PR11MB50284302C19D5F8655464766A0919@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220624152203.294031-1-karol.kolacinski@intel.com>
 <20220624152203.294031-2-karol.kolacinski@intel.com>
In-Reply-To: <20220624152203.294031-2-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0730a0a0-fd88-49c6-371e-08da6b45f25c
x-ms-traffictypediagnostic: DM5PR11MB1771:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: npu7ARPe/Um46DVhadn6F/0uaHiTJ8ZQxB9V5dQW9Hw0V+z2H49rvZU/IgEUDukxLvVzulYhadRTmUFZxRhisB+o6vOejphuk8iPtx68laomC9a4tdT75zD5VaagcAQj7mTfPUP+NtMVPPSjVYvCj8IT/QwTlE94DbXTh8fJJEy1YlVhS0vp8gZz6CKEAZVJ6ZwnhMvNHRoC2JQwV13zzA/0w8eDO9NsKULm4EHzo5FmsWwzMUW6lxAVOCxe9YfifIJDLKXPGyXw/3/fd1C51oAAUjA5DuRMvsRBisjFfarx5jzR2fUSHS43n1nnogdta0hO3th9dBI+hda40yFyyvpaJ440USfm4AR8SHkB46+o4h42aRBd/WgsQNuVM+coChFm5BQ/U7tSb1ONEvZ9gcGyvmhgdJsN8R0o5oRpnr+enbABBQuRkO2LanLfWRCDNWUhGVGFuzBfWvojZAbnR99xswan1En1kDQ9AAVfQEvm7QAm1bYVcRKt3Ysinp4B4Ucu7cEtWKLrWy6KDT3Oa5xUzCpHrc+4UtMWhgtteGhuiCIbz11qJMNuyjNqxxhVIMk+U3RwotweKG9dqu5xq6HYbxtcHJdVflj2ouhbPdgZqdDPngUlzyBBWrywErDKtUcqaWZSsYSNgzT60aQ79D/EQsTnptGtmjqB+pmDBtC2KN1krDGhr3fv+xzVS/MUqY3UUFoz8Y2Y2OEgeSzk8zwJeOZHOBh2mT6YFRY1udhPHgYCm8F7iZ6UbqwWGm7v5BLh9kWxYRmJnWqnv5EgYYmtA8fP3F2/80SugcJuQ8k+TIh/v2OWl/Nybx+lSino
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(136003)(346002)(39860400002)(366004)(4744005)(53546011)(110136005)(6506007)(41300700001)(26005)(2906002)(478600001)(71200400001)(9686003)(4326008)(7696005)(5660300002)(316002)(76116006)(55016003)(52536014)(66476007)(66946007)(8936002)(64756008)(122000001)(38070700005)(83380400001)(66446008)(8676002)(66556008)(107886003)(86362001)(186003)(82960400001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0F4MERMQXAxQnpKQm9mbTJJR0NYRjNQWnV1WnRuaEVlNjB2RGd6VllwekdQ?=
 =?utf-8?B?aUNkUlJycUlCNGhFYXhVOHNSYWdzSFZkZUhiYzNnTkw2REsxdzVqaFNFODVI?=
 =?utf-8?B?RzF4czJJR0wvNG56OXg3YjB5LzdIYVpQU01RQUN4elo2TkR4emdpS04wWnRY?=
 =?utf-8?B?eGgxK2grMjVZeHlRS0w2NzhWUFhlbkNQcHQ0cVUvMlIxNTZQTDRVdTFraUQ0?=
 =?utf-8?B?c0EwYit0eThibTBJcTU5U0xmSU5ZT1V3a1luNDFNd2prcTdpV1lvVU05N0ND?=
 =?utf-8?B?cHlnc3BkV2NSUlpCY1cxTXpRWENkQ2FyZ0p1bXozTUtoeEdLY1FzUmtza1dH?=
 =?utf-8?B?dnZXR1A0RXZ3ajNGOHVDMGhBZk92V3YyaCtsdlloSytmS1kwTGFrYURtSnVQ?=
 =?utf-8?B?aFlOSCsxZHVTMW5WKzdtYndPRm81Wmt6cUlVaXpYRDQvYzMxZEs0RnpQa2l0?=
 =?utf-8?B?N2xIUjN6QjRRSnJDMVRkbkl5aWZ6NTZlbDdBbkg0eVpMUGN4YzBWbndPM0Y4?=
 =?utf-8?B?MWhrZ0p0N1AvYzZiRmIrT0xKT21JdUpCMnhYbWFpblVNOStyYVhsdHgwWkNk?=
 =?utf-8?B?dzhqbTdCclNXK2I1b3Z0STZWUmZ1V0JIL3pGTm5QbVdOdWZZbWw2K21WS0FZ?=
 =?utf-8?B?a1piY053cmVzQWExTTZsMkJHWjlNUGJFVG1Tc1ZodmpzV0VkYy9lZUVwejg3?=
 =?utf-8?B?Mnc3NEs1RERXWlkrQUlJdkJVaWkrQndYT1AwcFlaallJSENGa0tDeDlKUWwx?=
 =?utf-8?B?TU5yODNjaVdpUlZQRCt0MWwxaFcwRjllUnVhSnptaEoxRFM4OGM4VGs4TFFh?=
 =?utf-8?B?WTNBZEsrK2dXd0lkOStLUmQxdnNtZGVvdGx4clpWSVhoOUQvUkxyRldoYmJ1?=
 =?utf-8?B?SEgzdVI0VVB6a1BPbllDcm1PaVRFRDgzY2ZWWHloRm5MU0hSSnhUTnIrYS9z?=
 =?utf-8?B?QWNZUW5Nb3RhMmo2cmh1RlQ5UG5OcTB0d2wwY3l2TzFCTG83ZG8yMEswZFpN?=
 =?utf-8?B?YlJjWlVFYU00U1ZmdWthUjQ4WjRDdHpMSStrVkgvMHJzd2p1UjVBS1Vtbi9S?=
 =?utf-8?B?NnRYSEhpbHR4a0s5SldwV245OWEwTFRDdytSelhHd3JsWTQzaXpnejczUTVB?=
 =?utf-8?B?NGRMOWVnSlF0bk5YcVRxM21Va3VkcDBWQ1h3U0JYNVJSV0lvaWFmVmRlenNt?=
 =?utf-8?B?cndpeXZmTm84WmU5bnJYcEpDSmR4SEJlSDRkZzdPcHRENXVJNzUwaW5VcXJX?=
 =?utf-8?B?Z3g4T1ZCQS9uTlgvM0gyWWgycnN1M3M5SElGMkZiMVA4NHFpV2VWU3haa2Zr?=
 =?utf-8?B?S0hiSjFEanE4M2FTak5nNzIxQkJ5Y1VOQ1o0OTRZQ29SWDN0OThxdm4xcEVq?=
 =?utf-8?B?clFRT0JhelFtTnlzeWFPMmRPWGExTHYreFI5KzlHa1BnQ1F1ZmxHLzhaQXF5?=
 =?utf-8?B?Rml1NGdXZEJiL1U1QUg1UndoVTdLd3NlTnV6THg4L2ZCWlByUkMrczV4c0pN?=
 =?utf-8?B?M2RscEVxYW96cEpKaFhCOWJFcUp0ZXJ3bFhuRVBuKzZMaEpaYmlKR0FDRFlw?=
 =?utf-8?B?bFU1YldIRnNLa0x1Z2krTDQ5SE5MdlVQZVE5T3dsZm5jRmd4SzdTdFpaVCt0?=
 =?utf-8?B?T2xnMXAvcU1wNUtRb0ZSMTZBODFHTzVMTi8vTzBXZCs1U0xvOS9VQUsxWGZI?=
 =?utf-8?B?WUxhQ2xyRDJSVlh4enZJVW9nS2h3L3NNL1RvWjJDUUtPTE5mYnpNL1BheUIr?=
 =?utf-8?B?Rnh5dUo0aUhQMWVkZXBIMTU0MFZXWC9wQVlod3lEMEx4ZHEyNFNlOWc5NnVx?=
 =?utf-8?B?L0RTRlBVVHloa0tUK2NRekJSSzVkMGVKSmxXN09aUTd6bEwrb2h2Wms3VW8z?=
 =?utf-8?B?dVd5cHBwTHArT3Z1a2FkM3BDTml1dkdjNERJWnZ2RmhQckxuWTRhZUhQaHVm?=
 =?utf-8?B?VWNMVU56UElmVjRtN0NCYkZ1cXZuaEt5aEtPb1BMNk9wMThWeUVJMWhSaTRt?=
 =?utf-8?B?bWlFUGJndzRyb0ZJOVVxU1NEdDN2d0Q1OEVXcXU3S3FBNFZYcUxkOTNtMS82?=
 =?utf-8?B?aFZJUStrUitVczNWMXN5dGZkTE5KWm5zSHo0Zkc4LzhOY2E4Y1lPMUVEdlVy?=
 =?utf-8?B?NG5XTHZsYnUwSS9tK1owK2EzZUhDZkR3OTQ1ajFkcENkc0p1MGNhNjFZbkNa?=
 =?utf-8?B?NFE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0730a0a0-fd88-49c6-371e-08da6b45f25c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2022 18:22:18.9235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6wCVqQ4Fie+1yP/bG53KUZl6uApLuLWgEZ066x2W7tAo8mOdzNngd4MwHB3mmRg/3g9g16frR2jv32bWY+KKG/JuNdDgBJ93c+azSUzv55Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658427743; x=1689963743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+meTf3Ng5EtX56d5UVQ7Fy74Uvff3y9e2w+Fimd6qDA=;
 b=Rd8Ky45sWpgAGcLt6q7n+VHk+k+6geq7snQ40oQ4EPnZ8A1IV2ihRF8V
 xGD9c6JxnFGylEdu8DurLCbSEURi/8YuS75SkLBCluR2UK1DnButrUV4R
 lP0JqCFSt6sABJTX8gPNJONomu+4tgokCCaqSY25XggDWIbVIKRP74/iK
 REVDB6slj9cYZnn3onDuLPH7su0J409PTLaL0b4huud4QXE3jAnWXXkre
 tadVw7/9hCPKzI4c/i3BFrHJWP0HF3gOlgjqH9o0tj2HPExGCqPHtkHw8
 XGjQSHoPOcQG+j3eNqNVsTykeEqDMkHRtEIwDr7Vcj17tOfSLiatdydrg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rd8Ky45s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 2/2] ice: add write
 functionality for GNSS TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol Kolacinski
> Sent: Friday, June 24, 2022 8:22 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-next 2/2] ice: add write functionality for GNSS TTY
>
> Add the possibility to write raw bytes to the GNSS module through the first TTY device. This allows user to configure the module.
>
> Create a second read-only TTY device.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> .../device_drivers/ethernet/intel/ice.rst     |   9 +
>  drivers/net/ethernet/intel/ice/ice.h          |   4 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 242 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  30 ++-
>  4 files changed, 254 insertions(+), 31 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
