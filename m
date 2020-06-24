Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C52620696A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 03:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08A20878AF;
	Wed, 24 Jun 2020 01:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FXwo1J3__11W; Wed, 24 Jun 2020 01:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5021B878B0;
	Wed, 24 Jun 2020 01:20:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A0FE1BF477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 708D8884CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hSiqH23fqLwR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 01:20:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C874C88518
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:20:16 +0000 (UTC)
IronPort-SDR: JvwZCp8r//J8xHkRTdaQ07sjo+s9rKVGiuOka0eqph/ZSWXc8QCaXMhDlDQwYz2WzXmpJm/rDi
 A+/Fobu3JNYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="145785486"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="145785486"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 18:20:16 -0700
IronPort-SDR: U/9fgede4w9hl1RK+420oVyIFojMftJpRVY7Q9f9M/+atTBSWMdfGMzjbOoNpTZmd4otO0vOkN
 EdtWvfRSBpOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="385024859"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jun 2020 18:20:15 -0700
Received: from fmsmsx104.amr.corp.intel.com (10.18.124.202) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:20:13 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 23 Jun 2020 18:20:12 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.50) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 23 Jun 2020 18:20:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tl7QQIHwWv+9OC8tOlGHRB8kBY5q8MivDUxRtZLO6/EeiASN8w309GiZRom2RyXZcqBwJwAXhQf8sOmKL/LApM79x9GByNZS0EftE/uMGLZamTnbwTQEZlSTb/UGbs1gl3v1sU9I1Dic7qb3h8aSWkfs79c0/QNYMYahzFEymEhT2IdH6sSnbyrFk4fUyfeW9NF7e45J05Oyr7z/HBKX7wBHhY43+RIi0WfkWjVpf3L4OnI6p0j5nBL3AcMdx8jBTDWYfYXKFDNQ0Y8anNVAkkLBBB8FQeMtZ9FXwrdPou/4LeaAooOxX4RY0Nm8Sw5tKioCT0evcVwvPRU2FYNONg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rw1a0yhGZL1oz9SZ4Y4CoSMFFgZUomljPxg3sfd9jJA=;
 b=eglPxA1AinxOJ5o8Ulur9TFf/PVuv4HAGoR3gtlZGtw4fhtkq2H0pph9ifZdQJqkvatKFIyzSjacaZje2EZSZ4TUMLVMEx/Mk5BkLL+zaKDNLvmDWJyfUmejmDSwV0nWwhGaO++T8pxRoVZbMhxktqNuOv12sfFOiFp4zW+quSDfalzZvvJGGWZrzplvH9kx1musd6bKSnplzvY8fIk2DHQKndqr2IpBau01UU08syr/1N0AkL2ru9nNE4ImoGp1t2UWQhpkaZGsXjl8KHOZwvNJTDlV4Gi5m5jS4I960L3SLctRqXWofsdXf2tvsSqbeX6JNR+m6pPJv17+JkAm6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rw1a0yhGZL1oz9SZ4Y4CoSMFFgZUomljPxg3sfd9jJA=;
 b=XJsG2z39TjdnKvz1s4jXPIa5cGdNG9P5+JDZHP3tdGtqeSiMuv6DEKUUSpthnQiHFiK25qpZHWJKNqjUVF51Rk8HNYkoKfc6rRLXnwIh2j4Ej70WJDKpqudN89gT3NDWoNz+i3ygLg6w8NKpMAwuASeWh767gz6CHXvHw8AZTfI=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3660.namprd11.prod.outlook.com (2603:10b6:5:13c::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Wed, 24 Jun 2020 01:20:09 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 01:20:09 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove checking media type
 during MAC initialization
Thread-Index: AQHWRJ869j5/MTzZuka9mMo5nbBZlKjnAdPQ
Date: Wed, 24 Jun 2020 01:20:09 +0000
Message-ID: <DM6PR11MB28905389236684F9FDF090F8BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200617120131.21277-1-sasha.neftin@intel.com>
In-Reply-To: <20200617120131.21277-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e93a7f27-14a9-4c32-3549-08d817dcbc86
x-ms-traffictypediagnostic: DM6PR11MB3660:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB36603F7722BDBA64B5B88A45BC950@DM6PR11MB3660.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: htS3cHmhlBXsNigkT5q3+wge+st8yvEWuiO1qp5WZndYDri+cs1ziR3tRSZEL3AG21Xrlc+AvP+Nul0qZfYP2P04M2vn8Si/fggW5hcZjPFuLqR866KswVDy4fDIGl93qZ3NMvYB3+lMIlwHFquniPFpuW+xonPnt/jlQ+3lKT5evh/mMnKVFTJd8nqzb5fWZmqeFYeVk3BiV/JOUHjxMVb1KFA1jsYkMvlLx3XrSN+rQbYZoEDaqF4moPBrFmib+d2qLfmhpogkRtcK30USjCNEK0XG9wDWw1U4kjJeSv1p05cLV9c9XAl4FMJ7rgeT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(6506007)(53546011)(9686003)(33656002)(66556008)(66446008)(66946007)(64756008)(66476007)(186003)(7696005)(26005)(76116006)(5660300002)(316002)(71200400001)(52536014)(4744005)(8936002)(2906002)(86362001)(55016002)(478600001)(8676002)(83380400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: NgsZrKV//UeUVigMYcm4z1+3+tgqst8i1X0HfQgiIIFfnhrJFG6cggfmxLagUr56HlSnK6+p98ec0xrTLylBNKHJeRjZZSb2JUQ0Wt9+fh69xUYTBJRUl9A7FppH/Kly3sx3IAL+AQy67Z3zTKHZTdO4uFKK3AzeCSJoxwipjAfo5oC/enMGV+Z1SXmT72D93Pp2r+hmgKplu+AXysC+IoRSuOvC+59N753pMOqNmiSMl7yGS5uX2rE+KFZ9WdfpaRPUmYLrLzUlFzb9AYKvV5cGDULw0nhcn2lMxcClQV8BfPqb5LOW/5GjpsTm0UuJVuBIBOYEphbglFO4BR4rptN+A3IOfhIr51PGKMRhNd1Z/8ldgP/2x5mJtpyU6YhfvkdxBqy/R00M247XB5LpkvPnWLwUGT3uNhmAR0Rd1NQfJnnxJa0fHbfat+bUapY8dX/9rFgcckEBy07vdP0pWHeyc2B9iwTmi5yUhaa7wRBW4NQ9+JKH+bvN535zaMoK
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e93a7f27-14a9-4c32-3549-08d817dcbc86
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 01:20:09.5061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pT69EY2rJXzAkg7PIfyP7fpwy3DO4JBoMdouXO9x8QcNijHAVBaJH9eabtCDdBbRonirAxf2C4/PDy9RFgwlzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3660
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove checking media
 type during MAC initialization
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Wednesday, June 17, 2020 5:02 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove checking media type
> during MAC initialization
> 
> i225 device support only copper mode.
> There is no point to check media type in the
> igc_config_fc_after_link_up() method.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
