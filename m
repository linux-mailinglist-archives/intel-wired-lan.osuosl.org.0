Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0986B4011
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:17:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 276EE41045;
	Fri, 10 Mar 2023 13:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 276EE41045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454268;
	bh=6+ZmxVKxRn07ZAWHJq3lKxMeLUS6lbgN/j30Ow01OLw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qvylaKeoFmWHm53pFlAGliBun/VubVnj3KXx7UN8d+PUi7xJcMuho+PO28DmnFI/O
	 AluwEC824m02D8wf+j/pVbWHTZkLWJa9RZXNkXbL+N+nBg0pwwndQDFJlrWf3wnzGb
	 kom75c/2YJuAr7M21n+p+StH+EFw/o7BXA8eaYswhSHywHD5JSs9Gv1X91DsNnNVIH
	 RHv2+6ZsYyf0+qII8B7f3b1SAEJCjduOMy6/CcfShhfTlNBas2GeNQcVkGRsQQA5Kv
	 6GB7Zz/xK3IEsTVMa+2bsQDzdj/CBzny9drjH+2F2fowjGvWBkAEF+GtYntUf3lnRC
	 /If01yXKYa7kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4H8517oBHsgn; Fri, 10 Mar 2023 13:17:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D21740374;
	Fri, 10 Mar 2023 13:17:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D21740374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 410861BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B4E94040D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B4E94040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 79gOyhCJtXPY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:17:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 634AC40374
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 634AC40374
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="338277923"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="338277923"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:17:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="923679712"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="923679712"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2023 05:17:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:17:40 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XIn9v7LZMn6II+vgREURxnZZtlTEN1HucNfwuJb1Sh3WUguio/qhT0V+g3UpNghrn+EWh1nBAhI+cU4AZ5Kwm9/nGDi0q0yffHBn0yZScj3InA4U/H3iDeucUJd3yFxl8zljYXBgcneFLxrnORxdNPXqEoXKpR+41/H01zhIlvShvPlQ9nLE1WUO8VIhDMeVMtwQehK/zI6FQyg8Qlm/0UqUTSmL3F0ONCM3iIgYVHjs1tklAifkWFLvIVmrjA1krWKyPAnwWqiWwkhamnjvBAmyPZjgivdgzcM0B+M0Baczqv3ClMJAgHGVGwPBZ5hPoF3/nnYuMqtco8ITXcYTWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kivW2aH+gwwFuxVGqH4VfJ2J88MUuH2M5rpfBt24YGc=;
 b=GuBPx/TMNDia92ISadquQPZAiBguU1uMLmMvfwsQiwt1dQQpjX4ArPydq+0X1d/2+LQPcue9WkjZ6ndBG0yjs5kdYF0JNbclUQhk9jN7KUsCg+L/VpGuJqbBUgwPZM6HQzhzbcfJH8xvrZR1Yyetsypplum4eh4G1p9m9IMFPaOTOmOPMjkPycFrZmhVI0E0SdgyRjd4qR1WPYbwixCbm0z4SUHwzDHG23F0hN17NcD6wwGq3lI7TFzwIGqydl8CQswfas7eIIaoa6DITbvU0fSimnNBc8SFAT6+4Gs6y7mUA1lNBiqrz0dFkRgR1sDQhr4hTfYIzBmm44YJvPm/bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:17:37 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:17:37 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 08/14] ice: declare
 ice_vc_process_vf_msg in ice_virtchnl.h
Thread-Index: AQHZRuGPsNgwXNTqKk+VgwdBR2HMNK70F41A
Date: Fri, 10 Mar 2023 13:17:37 +0000
Message-ID: <CY8PR11MB7364250F4439447AE829317EE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-9-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-9-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: f048fa8c-c287-460d-f01f-08db2169d1b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YwbqCIryKCVXlFPt+MwnlBhRqvMLEe/r0QG0ykqHoKXYep79YFcgvNIfAi8W4xat3N8ogAgQ8B4XuUCiYCnVe6C+oHVmviid/RYM/2wYheeWZCRcUomuWVvZJ+Yj8F4hfAgfK2JkAQtTIYSS4eFz0WdxDGKIQSFxrC5M6srZxi+yzACqVQtieuF7p2cFrI0bFzqattLCk2rHuZbA7PZvnVee7fODw1atIQYNNP026ugavkKWYXXwlp6l7J6cMfxhGchOnoyiKHVUDiFxuH8T7UHih7my9Yxa8rHiPahk6pQg+itnAb70++ZUM734KqaKob3w9Jdamy4cU1Lc9lVBNvBhKEx860vcRp3FbIHO7pvmVH0RDJh+mUZhzNYPnJ2YHJlYOdKvMk3H3J+Yotp6Wwac6kKH3kfEEF9JMObQ8P3yWu9B+HrAJ6tPN/nQMS46EZk9qexDIfv4buOaX3vgmdVQqTyP8KTsHWbxysXJM3qk5wEdY2nqOHj1qCgjKXxhkcYIZrDDQSBE9H2OIQqhKQ6p8mqx+54R1MuDCzqHatoWbGmT5HSukWip4pn8/5zk7ljKR5uUUUUw2/KgejVwC5pRqpjoToibnq9QhaT8za1jm1+SCpjHEfN83oAE80gTTbGFOkN0w3Gegr6NKlXHfr7MOD0RZMjD+yjE5+/lQaXfy6TLNijsSgzNPZFbTjoEpAOWDpACu+HxjDy4/0DgNw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?G0OkAA1OOSuBRDDM+bQY0j+1sQEV2EmRkBNsfTypf2j/UmF+NJphoLrSRG?=
 =?iso-8859-2?Q?2osXWrKs1JBn625QhEdlCc0ofzu8uVgomDtAYtRdTcl53rpMND8xW2qV21?=
 =?iso-8859-2?Q?P08/S4AS4Q36w5KSVXGtIbGKUe+RDDwkPe77nrvhVNnWjQNAzJotpVuo3o?=
 =?iso-8859-2?Q?1n6uvwj79mnmyr5grBzncF0syDfA93rXnyn9U/hF0AcOt+WP0jLjepu52B?=
 =?iso-8859-2?Q?Eu/E3zq6wIxnkHaktr+hf1sXkf50+j9clV/G22U4XOCQG04C5LI62VnP0a?=
 =?iso-8859-2?Q?rdRSYYe2Ic5Rt/Q/mVYwUH5f4ja8a1T9BSZpXPz81P6dnbjZg2GUiyB5fW?=
 =?iso-8859-2?Q?bb/gliW64IDxl92QRnaAkHIGqM44ocoDi3Z0X5ThPxVIrwFSmr7S6QfLHD?=
 =?iso-8859-2?Q?eZqLJSMwAl3WlYMRq61GetumIiqpJ9PR+lcr7w086q/L803vEegwWEijSQ?=
 =?iso-8859-2?Q?6Nutr/ys9BxCHKWXoaT/6a6RqvLgMb+TOQzSVklnGuWYYCKP3NGqZtjjIO?=
 =?iso-8859-2?Q?MPCKc6U8VmOEZxmiQ/ddDliBi265YbJ36sCsaVUo+h79UoAZcMCJVxCeMv?=
 =?iso-8859-2?Q?iKvRwVaHKBgplZ2OHtepnUzwvgxGi2U8U2uvbLwLG26zcfmeKPk5HdiiNY?=
 =?iso-8859-2?Q?+u4mjwsVSnV8yUULxzBwhr/YNPRKvcKVaWwsnwntrOwc6Qo3rmjcEV7Fwp?=
 =?iso-8859-2?Q?fTCWiKKDK3bgeZvg8H8NBvYtHVbwAm0Ab2QOnryuwoQejcIYmdTs9vmKo3?=
 =?iso-8859-2?Q?6HTLmeRKphcni0ECyl2fBX0Qx92aaVLHNBJOCL4yplE/54aGn7IZXrufRf?=
 =?iso-8859-2?Q?HMgANgjshDksu9GNjZ5xFsp9zhNAQJ4WyHPW/fi8CZ7Qasm1mcz0nn2qUw?=
 =?iso-8859-2?Q?zR+q3Q7BR5kJAqxb7Hki2qaSiMf9Q9cDwNShUdbmpad2EI4I8e5b2gLUfr?=
 =?iso-8859-2?Q?WYIdUPkJWWxyuYQDTa9riVsp6j4+MBEVUvBkM/v4fZoimZhO00GbEC2dVS?=
 =?iso-8859-2?Q?4i6wVeaNK+oo7APCdAZ96N4jaipFI/zk6iU4EfOewghyzNwAxlglBvNx5v?=
 =?iso-8859-2?Q?N/5nRJT/DX5kX0xfjsyvoxQ1KQUXA3DMXRsKRBxSHqSkh2B2w1SCo+e65r?=
 =?iso-8859-2?Q?Kvn7jBI9TUBmX2u4XegCp7LnV1dT5TnTw0cend4lFy44MJ9zFW2AT4OEh3?=
 =?iso-8859-2?Q?2vchk2jkDooUb5jd4Dc3Wv5LcBzojbyN+7Z421pshvlpRrCKIBPLx5SLOD?=
 =?iso-8859-2?Q?e909MWAn7c0/g8snuxWtMA/urpO9OEkAe74jai+CI9mjkKhFHj8Ob6GMuO?=
 =?iso-8859-2?Q?Ac263+QmAei5raoZjdzFCyE61tFHoLuifCwzzPBwnk1uHZTJ5XczIB9DLg?=
 =?iso-8859-2?Q?pwV9VOpI9MGELCgk9fS+wkT3+o9oTaxzHvoY7CsnUJ8Y+RXehTj5HBeYRk?=
 =?iso-8859-2?Q?ninnybIuYfACFs+rA9hW6lCjeKJ2nUu2Al9hx8SAMhEfEQNKXaakSMkFIr?=
 =?iso-8859-2?Q?3+/liolzSfB5AiC9ZGWtkuY+0wcGpBr/mn9Yh9BdfO2fG9nCG1QQILNO6/?=
 =?iso-8859-2?Q?iNKd5P2IDJWnV0mWjSKdDzAWQPo9R3udaTfApRMXRhpXpdL4bBX8QSo2KD?=
 =?iso-8859-2?Q?nNwXkxowJq7yTYukPwPdaUFGYS4733EMt6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f048fa8c-c287-460d-f01f-08db2169d1b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:17:37.6676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fAy3i5SheURSMzEMR4ZxB+aZDcxX4iYD1QonxFWPDkgq504B3x8r83ujKKiePe31tsK0NDBBW1KcZQ6bujn71Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454261; x=1709990261;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=55Oj0PzvbM/ecFSlP8biVDwZAvsikgeeYGFCm3LBL6E=;
 b=ij4cdpTez0OwKVMq2RF99WsGnMSe9pJymQcGajHZdgui4DS4OoOYXmxx
 S3XBdED8iL+OhSYgOghDntZ03N0coL8LjzwIl7MdQkgwFgeOcy1dxLSNl
 dHslNnGa5Yr6ke/C3jEormoEOM1+eq+gmw7oMA6VnjiSgztmyR0zpB5yU
 G5LJmS+4F3/BvEJjSCYF6lxt0bDeqRmNJfAsl+YR2SPVdk3DS2dPPFf3k
 bwqs+GifLJGNrdd1nr6iOya/61CvzRtS9UkiF0VQFz8P9UdFI4/0YYdDZ
 cbh6EjoUxJrHSXuDVknepLGqBy/T1olB6cmQd913q+j43OLe21iNTtdG2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ij4cdpTe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 08/14] ice: declare
 ice_vc_process_vf_msg in ice_virtchnl.h
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 08/14] ice: declare
> ice_vc_process_vf_msg in ice_virtchnl.h
> =

> The ice_vc_process_vf_msg function is the main entry point for handling
> virtchnl messages. This function is defined in ice_virtchnl.c but its dec=
laration
> is still in ice_sriov.c
> =

> The ice_sriov.c file used to contain all of the virtualization logic unti=
l commit
> bf93bf791cec ("ice: introduce ice_virtchnl.c and ice_virtchnl.h") moved t=
he
> virtchnl logic to its own file.
> =

> The ice_vc_process_vf_msg function should have had its declaration moved
> to ice_virtchnl.h then. Fix this.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.h    | 3 ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.h | 6 ++++++
>  2 files changed, 6 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h
> b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 955ab810a198..1082b0691a3f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
