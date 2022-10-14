Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0515FEC55
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 12:08:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C801742241;
	Fri, 14 Oct 2022 10:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C801742241
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665742132;
	bh=BCzCYYT4bbJqqqUhTmf4uLc7q+gvRwrsd4L1k6dS5Qs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eFKbN8AeRgAIv1IsdhkGUwL5JOxXUyBwpFDAabOUdbezp+hRsO/yURUgVixCQ5VZg
	 qTXCaBxxsQSsz2YEvLnafXZWs4PZWCDx8eo8nvBRBNCCdFEi7SdmifL2KSD2BLBws2
	 wOhXn7Tdo+Yg8zkmFo2eO8buogD2xzRhe7bW21OC7iUKxkzos6qIQulGMoGT7OlkzZ
	 7ak6T+SWs1/AR8qfJGENjr0bkYrlwrkFqBXMBxGXCn+jMYG3Nf6CHNdc1kI+H+AJLO
	 dxj8qOGDMAJPfqEufwhmIi45Ub+CiPPg/cUiwFr4K7ZyCHoQiDCFjTBLnuwJ3kxVdV
	 oiY6kswouPJTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n-KYS8_HUFQf; Fri, 14 Oct 2022 10:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 590B242214;
	Fri, 14 Oct 2022 10:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 590B242214
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7BFF1BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 10:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB142607E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 10:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB142607E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v3oF5mjXhU_T for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 10:08:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8980607B5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8980607B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 10:08:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="367361826"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="367361826"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:08:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="658537793"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="658537793"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Oct 2022 03:08:44 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 03:08:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 03:08:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 03:08:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkwZdkdLcSuu/voJz75ILAu4PXMnMfpc93M2qMTzzMA/srmHD/ZpWW1AoWkJgVrd9fGYlw76vlwlfQNAOxN86YlPHTZAfLi0KmQOnDD8C92xZN6Ac8zjz4Tinj+GQiKVeYdiIcWQacOFUlbE2Q/mEnKPHQzkHJywpJlBMmi2CEz+4au71fw18CEvWB0NJs8L5+xP0kfsRvRzAhUOL7D6ks21x/ICf7r1uqHeVltudg0jiBLvdvaxJci8ysRh8pHjTZQs8OJ+puSkbTtz9iCkJjL8p7bWQVmFhcOr+jLJdYsOV7hZUG0E9SxPV4r3/OtkFLfXEKjaZv7lDyBka97oZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rMtmI5Mph8WcHz2TCz/U7MMenwcDJ+v2g+Jt4KfRfqQ=;
 b=J7d3cNONBcdShhObB3ak3worRuwDSkQYm4ARU2OE4YWY1gu+nrXTICYNJA11tdfZnaWW+kcZof4s2Y3KyGa73Xj05JIoFk6t3b249EUsqB5vKjgzI7jVneOJXvncy6CH6kG018aAb9VPTjDWoDaHaUAgQHMHjMRsEiKLZ8D8+pTDJHz3PZkzuttEY5UzBG/xNnTD1tqcIBhunhshJrBlSS/0JWfZSilkpmFqIg902OZZtj1ih4XHpx37OUdeEM5L8rqf63hZU4/4T2aG1O5zmet5nr0CBYfcrbcSdOwub5QRnJUgwAbhk8fBnmW1Sf24WWGiAX9MTYchqWy7/FRIiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 MN2PR11MB4743.namprd11.prod.outlook.com (2603:10b6:208:260::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.43; Fri, 14 Oct 2022 10:08:41 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::d96b:d12c:31c8:6584]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::d96b:d12c:31c8:6584%6]) with mapi id 15.20.5676.033; Fri, 14 Oct 2022
 10:08:41 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH next v6] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHY3pR3slf2mRvTpU+KaM2oeQmni64L1p4AgAHVruA=
Date: Fri, 14 Oct 2022 10:08:41 +0000
Message-ID: <DM6PR11MB4657F3319F993930CCD389899B249@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20221012234128.6703-1-arkadiusz.kubalewski@intel.com>
 <85a80602-5791-3440-710f-19b645788c7f@molgen.mpg.de>
In-Reply-To: <85a80602-5791-3440-710f-19b645788c7f@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|MN2PR11MB4743:EE_
x-ms-office365-filtering-correlation-id: 2fa31073-3be4-4f0d-bd34-08daadcc121a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FdUIWBoZObuHeBdiZKiSseHq8tc4YtpCYFfx689jWpitvwXklEnlXhWZyfM/cYn+I0AGfKUpu777BdD42nrETNCJ0+IddhG6xdNi8jaAI0uq1jjv/JoohpRue6bCkNQOKDWNNehpVzal1OEHQDi78BaDBNd8WtKJBK4LGEhiIP4ICTSfoxCG03MYIoYYhruelYOvgwHvfsfdQTbhjxv4bOKlzE27rRCQYyW9JKCyFWdQb/O8fT/Q9KVeFc5l8AJAvPXh892kHw2bEg5kNZ6P1vgxIggSEuo4cPizLhC8pC1TeYikTrG+UonPrDmWNfm5rli9MX4NN9GdxZ7QmOLBKCESlgEfXS9SbYIzFXFNlIQNRkMWMBxxBNzC6kHI8/XkKo6hFTU+oiqWCdLmuJWjgR3VVdats2pyunQ0KrCAahpIYTjJO5GK5j4ylRjN1xJopB/eQfS6zvrsH2LaC63fPrWnRuNCYowH7OMJ+BycS/18tE8Aq8ccm0OeB7RW71kcVP2YA0yRnYSNL3BLq4tgoiSz1cPqhiF3MqOfz5e22iqFhSgloZWCgENkTqUZJOrRI/+hRqnZhScsxr7sIWuOv2gapVM9qJH2RWav6w3ohd4YGq67SI0JDcHbOMZlOAieCL63I7eQuw8pu50eSmYYd7Xvd/W3DDjx4ofMUXeRiqLKTsrdoy2jdWDBxadTHMluhduN0+9YPhu0tEpp1qYm2bw2QYh1hIEN31jjH7AnzdKWqk70z2RLMDXXsIAWCk9Yqj1aiRVUqx4e9MWx3KAxfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(396003)(376002)(366004)(451199015)(82960400001)(38070700005)(71200400001)(38100700002)(110136005)(86362001)(6636002)(122000001)(478600001)(52536014)(186003)(26005)(316002)(33656002)(55016003)(8676002)(41300700001)(7696005)(6506007)(83380400001)(5660300002)(76116006)(9686003)(66446008)(66946007)(64756008)(8936002)(66476007)(66556008)(4326008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anhMM3d4VEpDMVlrL0FqYVZJNXFMV1VPOTFxQkJkVlA0ejliNUViY0w0YjRF?=
 =?utf-8?B?djh4VEpiWCtSWTdtMFNKSTF3aCtoUVVnMGdZYUVIdVNITUhOTElOU2R6VTl6?=
 =?utf-8?B?clRScDBrVGxuN3B6OXRGdTV6QzVoODdLRkFzSkp0RElRWTNIeVJtdmQzcEln?=
 =?utf-8?B?MjlzcE9OYXowNzNsMzFOQ0JYZ0ZORWdGQUN1em9CN3NSUndWWHo1ZFFiTERi?=
 =?utf-8?B?MzRZUFRyTGNCZ3NYQUw4SjBRY2dvNDF4TE1HZTQ0WHBsSW8xMFlDd0xxZnJ4?=
 =?utf-8?B?a010TmRoNzlndUV3U2c1REgxTFE3YjJ5YWdFaS9iMWM3ZFdVMG41SkxBMVp1?=
 =?utf-8?B?b0dBbmlMWXRsQjBqL3Z2MXpVUnFQWHlEdDBoaHptYnJnUkFyalIvM05NTEFa?=
 =?utf-8?B?dHlnb3oxNENKN215TklMUDl0c0JpcUkyYXBjd0d2eW5UZHY5cHJJN0Zqaloy?=
 =?utf-8?B?WTZ1eHZCcFRLSEF4Z0J4NGRWOXBoU25IZGQyQ1hQdiszczlnWk1kQUVFQlc2?=
 =?utf-8?B?SWFNZ0VXaVB5a1VKemFabTluMTN4L1JKQmROMzUxY3BEdkw3SFArdVlSUEtO?=
 =?utf-8?B?dzBOZWRxZngvL1dpaTJoU0ZBRjhVR3V4KzU1Q2MwZEd1U3Arb2x0dHlXeHEy?=
 =?utf-8?B?SmdrRXR3STc3b2JkZVJCSG1GZmdFTDBpZUZkcmZDSVJ2TFdKb2FBY1QrRHoy?=
 =?utf-8?B?bjhwZkp3Z3Uwb0RkVEhSaUE3WEdjZFoyTkk4eVUxTTA5clp0eFBvQWJOMFJJ?=
 =?utf-8?B?QlVwenZHeGpYVWdxMWZHM1B0UkovdTRLZVVWV3V3VHQzK1V6MFFlaVBZclFO?=
 =?utf-8?B?U0o2WnUxalhuY2tINWpXODJjelBqUWpIT1NuSzB1cllWRjdabWFXVWo5dTdm?=
 =?utf-8?B?K21CM0lYSHEvcUFLTUVxZERyVzh0WFQyY0t6NHRuYjBPSFpxNkQ1alBDM215?=
 =?utf-8?B?QU1iK3IwNGFqL0pldUpPWDJHOWtMK0k2Y0V2Q2hJaFNZYVM0eUJSRjd2WHZB?=
 =?utf-8?B?QUoydTExT1RzTXcyM2RjalVzZEpVUnFSeFVXY0UzQ3hwOGI0aHFGa0ZNNmhz?=
 =?utf-8?B?aEV4QWxqc2huWlRNam52d2o4dnpxc3lvQndUMkxaQTdQR3IyQzhJWU1uUVB3?=
 =?utf-8?B?eTlLREh3WU8zNGtzRlNGcVhzQk05SFJIVHJBMFloTUNnaTBMRnptYTBVWmlo?=
 =?utf-8?B?ZXVtQWpLN0RBdlVibGFxaDRJR3ExbDVtakpsQ2xtVmFoemxNNWJZeFoxL0l3?=
 =?utf-8?B?OTREdjZQVHJpS0ZmdW9xcTRSOVN0WnlBZVhNUmhGaFNHb3p5R0R4R0x0NjQ0?=
 =?utf-8?B?MS93TERtaHk1ZVVtSy83K3NwMlpad1RncVRndW90M1JkS2I2WWxjeDg5YjZu?=
 =?utf-8?B?WUxDZk5zcFpGK3I0WmRvMEN0MHZVc3pPVXV3U3FUYlZLVXo5MzZGSUdDZThv?=
 =?utf-8?B?UG9hY1U1L0pjOUZob0p4bTVMREFPeUUwRUp0bjYrdGVqOWJna3JWN1A3R2ZZ?=
 =?utf-8?B?SCtNM3dabXcxTkNqVkxST1NDbWVPS0RYYXd3K2Y4MDBnMktNaWxnOGpnNHV0?=
 =?utf-8?B?RkhMZEcvME12YXd4a0JwRDFMKzA2WkRLSGVwc3pFR3hEK2VYaEtNNnpQckJL?=
 =?utf-8?B?SStvdWo5aXYvYVRXaEVHZTZ4blRRbWJxd3ZpcE1aUGpTZlpKWk91bVNMRE9u?=
 =?utf-8?B?YmRrdCszUnd6YjY4SlpLQU0zdi9iL2ZxVkV6S2oxT3E4RDFZKys0bXZ4NUx3?=
 =?utf-8?B?WXIwQmFMTlk3RWVuc0p6M3JDTTJ0ajJ4QTlsa3M4M2gvN2N2QjhCelpSSDlJ?=
 =?utf-8?B?cWNSM1dJaEc1T2VPVkFFejNYcFJtK0FWRzQrWGxxNi9YRnd3MlBkazRsdUkz?=
 =?utf-8?B?MDVnUzZSbGRNajFiVnhwa3UwUjNtMzF0RWJBcEd1c2pGekJSWGRMRkpwM2s0?=
 =?utf-8?B?ZUVVeDNNQ2U1ckk1cmpaR0EwbjkyNVdsbEd6cWJKWmFiNU1UeEdNV25MWWtV?=
 =?utf-8?B?STlHZFNqTDRjV3B3UXVuVmdBanN2RW90dVh6NFZDVEtXc0FFeHlpMElSVmFY?=
 =?utf-8?B?WVNDcE9HN2l4QjM1RERpRHlmNmVESHk2SEZZTS9CTFA3SmFtTkJiYWkzYTZr?=
 =?utf-8?B?S01ZQVNlN1JFMk9CdDBlcklvYUEvSEZPdjl3NU05TGNCZE12YnhsNyszRVJY?=
 =?utf-8?B?OVE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fa31073-3be4-4f0d-bd34-08daadcc121a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2022 10:08:41.4866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XcA5Tldr8JTRXyCwT1y3aLXkKSqewpu4WB9XK0xQDFpNrw78IUoIaPfkn8NBMBTIC2TQPF8y2tZtVBx6id+pTZoEO5TK3/UB+tlIYO50CDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4743
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665742125; x=1697278125;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rMtmI5Mph8WcHz2TCz/U7MMenwcDJ+v2g+Jt4KfRfqQ=;
 b=ghgOp4/VCEg/xd4Z42rBPv6Z0UwFTfYM2Q/LWhhe01/Yin0qL8HsCUJb
 xsyl0EhdXoyjXodtrRblH0sCalT6gsrTR2r0y3d6Kvs3t6ryKiKcVCl44
 52iT/Nq404AfL8AZFmnr5EsVlU+Uof3ddzZfojRZ7QhV1DnnrQMLgYHKp
 E+XG5/YisxTK7/vS/ia5v1MrRSmTW0DReyyKKHRGJqeEX5P+JjEmWAXT2
 +Vo0Gg2muYuRVenNNxkOjPBbU+FLc9f/Bzn0rMPIGF4SlznL28XWyO9Zn
 Kr1nNjY0Imc390M+z/rzUImCi67KcdjddSLJhAGzdJL2gSCY0r9krof9/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ghgOp4/V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v6] ice: use GNSS subsystem
 instead of TTY
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxA
bW9sZ2VuLm1wZy5kZT4NCj5TZW50OiBUaHVyc2RheSwgT2N0b2JlciAxMywgMjAyMiA4OjA2IEFN
DQo+DQo+RGVhciBBcmthZGl1c3osIGRlYXIgS2Fyb2wsDQo+DQo+DQo+VGhhbmsgeW91IGZvciB0
aGUgcGF0Y2guDQo+DQo+QW0gMTMuMTAuMjIgdW0gMDE6NDEgc2NocmllYiBBcmthZGl1c3ogS3Vi
YWxld3NraToNCj4NCj5b4oCmXQ0KPg0KPj4gZGlmZiAtLWdpdA0KPj4gYS9Eb2N1bWVudGF0aW9u
L25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwvaWNlLnJzdA0KPj4gYi9E
b2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwvaWNl
LnJzdA0KPj4gaW5kZXggZGMyZTYwY2VkOTI3Li4xOGM2YzA2NjAzNzUgMTAwNjQ0DQo+PiAtLS0g
YS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwv
aWNlLnJzdA0KPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJz
L2V0aGVybmV0L2ludGVsL2ljZS5yc3QNCj4+IEBAIC05MDMsMTMgKzkwMywxMyBAQCBUbyBlbmFi
bGUvZGlzYWJsZSBVRFAgU2VnbWVudGF0aW9uIE9mZmxvYWQsIGlzc3VlDQo+dGhlIGZvbGxvd2lu
ZyBjb21tYW5kOjoNCj4+DQo+PiAgIEdOU1MgbW9kdWxlDQo+PiAgIC0tLS0tLS0tLS0tDQo+PiAt
QWxsb3dzIHVzZXIgdG8gcmVhZCBtZXNzYWdlcyBmcm9tIHRoZSBHTlNTIG1vZHVsZSBhbmQgd3Jp
dGUgc3VwcG9ydGVkDQo+Y29tbWFuZHMuDQo+PiAtSWYgdGhlIG1vZHVsZSBpcyBwaHlzaWNhbGx5
IHByZXNlbnQsIGRyaXZlciBjcmVhdGVzIDIgVFRZcyBmb3IgZWFjaA0KPj4gc3VwcG9ydGVkIC1k
ZXZpY2UgaW4gL2RldiwgdHR5R05TU188ZGV2aWNlPjo8ZnVuY3Rpb24+XzAgYW5kIF8xLiBGaXJz
dA0KPj4gb25lIChfMCkgaXMgUlcgYW5kIC10aGUgc2Vjb25kIG9uZSBpcyBSTy4NCj4+IC1UaGUg
cHJvdG9jb2wgb2Ygd3JpdGUgY29tbWFuZHMgaXMgZGVwZW5kZW50IG9uIHRoZSBHTlNTIG1vZHVs
ZSBhcyB0aGUNCj4+IGRyaXZlciAtd3JpdGVzIHJhdyBieXRlcyBmcm9tIHRoZSBUVFkgdG8gdGhl
IEdOU1MgaTJjLiBQbGVhc2UgcmVmZXIgdG8NCj4+IHRoZSBtb2R1bGUgLWRvY3VtZW50YXRpb24g
Zm9yIGRldGFpbHMuDQo+PiArUmVxdWlyZXMga2VybmVsIGNvbXBpbGVkIHdpdGggQ09ORklHX0dO
U1M9eSBvciBDT05GSUdfR05TUz1tLg0KPj4gK0FsbG93cyB1c2VyIHRvIHJlYWQgbWVzc2FnZXMg
ZnJvbSB0aGUgR05TUyBoYXJkd2FyZSBtb2R1bGUgYW5kIHdyaXRlDQo+PiArc3VwcG9ydGVkIGNv
bW1hbmRzLiBJZiB0aGUgbW9kdWxlIGlzIHBoeXNpY2FsbHkgcHJlc2VudCwgYSBHTlNTIGRldmlj
ZQ0KPmlzIHNwYXduZWQ6DQo+PiArL2Rldi9nbnNzPGlkPi4NCj4NCj5QbGVhc2UgbWFyayB0aGlz
IHVwIGFzIGNvZGUgKG1vbm9zcGFjZSkgd2l0aCBgYC9kZXYvZ25zczxpZD5gYC4NCj4NCj5QbGVh
c2UgYWxzbyBhZGQgYSBibGFuayBsaW5lIGJldHdlZW4gcGFyYWdyYXBocy4NCj4NCj4+ICtUaGUg
cHJvdG9jb2wgb2Ygd3JpdGUgY29tbWFuZCBpcyBkZXBlbmRlbnQgb24gdGhlIEdOU1MgaGFyZHdh
cmUNCj4+ICttb2R1bGUgYXMgdGhlIGRyaXZlciB3cml0ZXMgcmF3IGJ5dGVzIGJ5IHRoZSBHTlNT
IG9iamVjdCB0byB0aGUNCj4+ICtyZWNlaXZlciB0aHJvdWdoIGkyYy4gUGxlYXNlIHJlZmVyIHRv
IHRoZSBoYXJkd2FyZSBHTlNTIG1vZHVsZQ0KPmRvY3VtZW50YXRpb24gZm9yIGNvbmZpZ3VyYXRp
b24gZGV0YWlscy4NCj4NCj5b4oCmXQ0KPg0KPg0KPktpbmQgcmVnYXJkcywNCj4NCj5QYXVsDQoN
ClRoYW5rcyBQYXVsLCBJIHdpbGwgZml4IHRoaXMhDQoNCkJSLA0KQXJrYWRpdXN6DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
