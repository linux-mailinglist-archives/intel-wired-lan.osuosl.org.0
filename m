Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 946C31E7028
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:18:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4772988293;
	Thu, 28 May 2020 23:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Clby55QzgTdU; Thu, 28 May 2020 23:18:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DD1688287;
	Thu, 28 May 2020 23:18:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CB081BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 473A78890E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9+gSHVDbkdW5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:18:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA03F888D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:12 +0000 (UTC)
IronPort-SDR: jdjZ5AiDyIdMODrV11bO1qgOhl+FDelPmRCKamjlths1Ix6a8MADSK4BFz8oGlnDDuSbMRh+64
 ss0U7e4et+Ww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:18:12 -0700
IronPort-SDR: 0W+WvvNiVmiVbcCKjqbEJsjuiNxwxkcTVRiB+4G3jENL8mxO7mmj+dA00JWDOriMxVCQ4PmgQW
 FmU+nVMgVkLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="285328316"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2020 16:18:12 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:18:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 16:18:11 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 16:18:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:18:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m6T9uq6gJrDGVqbl5oPCbf3wZntb5CeAaKzr29z69QohaNohzXKPse3zIazbsMKtS1bvAjCK9hIhYWAL5aKBTpnU/MDLEOJA3f6E+Kqfz5Ni364CQAlLwaJjY+syc5inLPwksjky2J0nIxwlyWT2iFw4t14KieVk/5fg68YQg2YEmplzw2WovOr98yJDIB0PNWS8T9OyUfaqWBhE+Dx/IGWRZBFKlO++RUjj6eFAN64Zo3f0PI457VfiPAwTWSRylL8FbPs19cCgdhajlZTUBVKu+0L+YP6rtvo/rptWvM+ozv2HqP+4XmZvK01sbqeg443N89qB1Da2Jctm2H/n2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4aWTVxXwa9r+Rp4PeWJbZsumZLOGFJpFqDVBuEpKses=;
 b=GTGjEYz9D1PyzdUmkUFIOu6rBACcOJtKWYSIJeCzvp9/v6xjfdE+KSjSBojbcZ1obt327MjtTSJw3+f9Ard1P7LDs6B0U7n+5ocmeD+ndAo3JUqRDmVRbWNlgxir4M7M16ACCh6inEDKRNnW4nChggjYRzxP1Zod/LTuJD1FZjd81+VmZEJXkhY8/DM+70RP1wVqJDjpOm7mvdF2QphSFS0skLBBLMTVodTbksxiWUSxA1yLWx+7/Yl2ZYMOZqnxhhNdkZ9/KiXTV4yGYvPb4N3K+CSbBBNwN8AMVzjNBB05hhq/y7QrwazL4HxzfDLZ24kk8NTe3sQT2jgUwQlG9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4aWTVxXwa9r+Rp4PeWJbZsumZLOGFJpFqDVBuEpKses=;
 b=Bh/Mdy4Gq8jmjbDaaytbbxLJctuu2ecdUr0jFnu256xiGHqbwSq2v1li1wG5JzWaUHfxXgyszVynmTUJoCby1P9VR95mdURjghBO8otb+4JDKwutO5Tga/SyTpu8LD3OhDMJjOHFGfqTqd6LtVCGFLEj9ruDBsF1rUiKEfd6sQg=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (10.172.35.20) by
 DM5PR11MB1771.namprd11.prod.outlook.com (10.175.91.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17; Thu, 28 May 2020 23:18:10 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:18:10 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 2/9] ice: Always clear
 QRXFLXP_CNTXT before writing new value
Thread-Index: AQHWKx0cfamU+wE/sEiNMjMtEwx8F6i+NjPQ
Date: Thu, 28 May 2020 23:18:10 +0000
Message-ID: <DM5PR11MB165990B8E3C16B71C4C79D118C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ebce6fc-1146-46ab-01cd-08d8035d6342
x-ms-traffictypediagnostic: DM5PR11MB1771:
x-microsoft-antispam-prvs: <DM5PR11MB1771B6DFE65BDFF397EE33C48C8E0@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dySc7M19drTB8+5Lt0wG66cVXJnqi7KcrIjgSjYeuMmnhMCcP7sy6HCyesnx0dKEeTAtuIpXNdwOwlZ/5+4Yf/nG67/gPYdsswkmOZuYVtqsCsyj0bWgPCxim6+q9mI9E5HqoLQPm92uz2MuGeCJQBDuCPvjcYXYENr3urFtyYMMplO65eRZ0D1aes+yJrL51zuDHiKhRC6JRNYLdyDQpO9hCSuef0/TxI1QBPBenZpgcfk1VY71avVpjZTtFZh3gXsXX8A0+DWzHHmsg5jqWbcvMTpfexkM22RlYYy6ydVTqMi0fArEng+qah2vYLAU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(6506007)(53546011)(86362001)(8936002)(8676002)(4744005)(7696005)(83380400001)(5660300002)(66556008)(66476007)(66946007)(76116006)(186003)(26005)(66446008)(64756008)(6916009)(71200400001)(478600001)(55016002)(2906002)(33656002)(52536014)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: iShbLrSIe2x/jyS9D/+6/C/uVCevOeL5XesBbV5NhC1pSTLf9Zbf+0SW2RJQomC1rjEdm46vy4A67Uq1syI/JoO4vLchLWJZNlJIF3gsRjo661Z1T1HeCkzAHfFFtcjoH/36HNGZCCY0zrAVqoJgHjHa59eDlF9HW4CGP+/IwWilufZ1ae1XUDTjDDoY45XflA5a+nKydvXXFEtpLdVdpID/eHH9KrHxCMh/ZZWzt25RNHI75Y1xZSX9iN8IEVjdZR5OgW9vBas0W6LMlED3rxWAxIWOkqtZy8FKq4wbFKWWRpqc9mCqeMGPQ+Cr4x+zri10+3zv2PdAure5B/PPD5WVSYedQ46d/vOQb1TJUjpExHlfwyoNjUAby5TFsKWjw96D+UU3GjrB+ocg8appa2s44eaEnhkP9FRMYtFImzO4iejCzuTDFZJgyZOwXWixHf7FMxbli28DGG37kuqYJ3jVKj4eKIvcDI6hy6Pb262NEI9WLflkaZtDqXKrFPof
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ebce6fc-1146-46ab-01cd-08d8035d6342
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:18:10.3867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: no9R8GCWgRk9j9LB9KHALMIQ524pazNhpuMJRDRbOVRU+Y5KkpTbtPV1yeXjKMdcen5XzhzNubrGF3Gj+O9BAf5XWEk6cF6m9Tvo2oyNOyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 2/9] ice: Always clear
 QRXFLXP_CNTXT before writing new value
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 2/9] ice: Always clear QRXFLXP_CNTXT
> before writing new value
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Always clear the previous value in QRXFLXP_CNTXT before writing a new
> value. This will make it so re-used queues will not accidentally take the
> previously configured settings.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 33 ++++++++---------------
> drivers/net/ethernet/intel/ice/ice_lib.c  | 26 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_lib.h  |  3 +++
>  3 files changed, 40 insertions(+), 22 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
