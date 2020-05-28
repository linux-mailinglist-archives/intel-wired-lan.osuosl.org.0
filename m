Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB63B1E6DE4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:42:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9073A20414;
	Thu, 28 May 2020 21:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSMcOJcGYakS; Thu, 28 May 2020 21:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DCD1821514;
	Thu, 28 May 2020 21:41:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 959961BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 91EB386CF8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SSrPhWkPtDPN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:41:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7022E86CF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:56 +0000 (UTC)
IronPort-SDR: 9QIbVm8fkXx7HbPF+JhZLUr+9PeG68vQKODC5ZUcmlN+VfzeuYdh9Nz4mi2pn0GYtgVvhXvC7W
 qd1Gi1f5A5jw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:41:55 -0700
IronPort-SDR: X0KVuC9d2XbbZiX1kb9u9OZztxNLtBbJLJfUhcHVNjzqcPasRQZk8X5Xnr7LQRRGzEnQVkexKP
 uTLXyZh/1EDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="255912633"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga007.fm.intel.com with ESMTP; 28 May 2020 14:41:55 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:41:54 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX123.amr.corp.intel.com (10.22.240.116) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:41:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:41:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQad5uMvjGV3WyZ6k6cFNPCAhI2t5J8HvT2TFEsnsIWbdghkRZcAfDA1XGvTi5wbspr8NmkHOR7DMAiQ6teh1Eqm6t/9oyMknS2LurHAjks8wfw8thKEGpr5Lrr296nWyKf0JvZEcrDPNN899A7AKvYWo0/MRrQDfBy5h3iDfYrxwQHDIQP5EsOqr/gyeYan01Iq5iKxUCVRH7aF/3rH45RYkrzm+MYBfcjcZLNwawr6Jmu1W/lBv430ZujytIsxvlDla6czf1hoqO7+4BBvgr9yC9mV7iP/ay33DYOk4DhAM/xip3ye/qlIQ8+QobCB06Blr/bdmCFJJ1cTGgIiXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DCqo3ahz6E0yOsNNW0QBVol0oh5gQ+nzCg4H8a7TnI=;
 b=lao1koSO+YOz6mH8khHM9RpexlpvdYcjoXam8jdBDEXmeOsM7EEo8jETyIVMzA1QLTIUYEakH/3sQ8GjjjMi14AhUCIo5rGfk7R+1OlHwCXfwWEFsvqolDjzZqQIzHof3AIb4l/umlYcQ21HUEKT6YHGepVWBFPid6Y4NHkbeGmBcK7XDIZ+5hkzoeRFTvnqBD1HO47uBVQ18kMF3yTN6NAcWsF499fEUF8mFlRCxHO0Ub4ob9wHDXN4eg64+MNlNmj64KFmRPzl+euXCn7M5CU5Q3SHUR5PhjJ8W84Qu4Gwpaf/zDHAN6SlzBZGnW9/FF2tnCnI7otPGOvnPTZF5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DCqo3ahz6E0yOsNNW0QBVol0oh5gQ+nzCg4H8a7TnI=;
 b=miGpQs5DCGWaR1VAxgMI7G0g+pJnZh9DbNlJ8dbTKrYlay2erJZMVCZxI5Q65aBSs0NI115KzUut8vPRQ0NHpVYj6Kxlqa4zthUNPBTcjTBFGHv8/ZV/si8VmHYtFX4ktBWWcS7tC1IRN2iF8K7aRak7bxqp2mp+0VGhxrLevOI=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:41:52 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:41:52 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 08/15] ice: remove VM/VF disable
 command on CORER/GLOBR reset
Thread-Index: AQHWKxyR3of7oT4Q3E2nGZGjOauie6i+G06g
Date: Thu, 28 May 2020 21:41:52 +0000
Message-ID: <DM5PR11MB1659BD2D73E16656283AE91C8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-8-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 3b7c5463-ad29-4f25-095c-08d8034fef2a
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB2043837E1E31786A513A3F8B8C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sTQ4klpCk60bSNTfzv64ls6yWmpCCW2HTsBHScY+80V2IhFah8A4InMcooi1iGO2ISUqi/FmaHE2OYqYkZdvO4Q228PUklWejkcv+qjU0eKxgSte9gTGd9TbMkJNVAJWYnwgKatQ3fSQKbNPnFyY23TdsKK6SZXA8RqNsngvHOapitub951g3TSrPg5K86Tm+OsPRaDyLBiiCdu+TsmfOr7CFD2ZRSE2zbcFHD1z8XxyGT3kvP8gb0ZgzJIzFlEATqqvsJ63rhlRVAC3ju3eVV49MMVu87dQigF+LQ8De2BshshVkY++o8LzTB2IYoY9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bmdJAwlGuG3Ox1Uf8/SCT1Kez3wKPoZmMZ6yPK4/uXgxlyWshoHwgtevqC6v4MnvCQPOXv+swlzFU5bBW3ZZ8A6vcD1v23wGlXVNFsrSqrgy48Aj0S01fnSMdqiHWZ6qT/QVIVyQyJkeMJ20xyA0LVoKVIa+/rKWLqVFQ6Hupp03zMfav4JfNlz3AKjs5Ax0Jp05dbx+Z629YMTK59RZiLnugHCziqhTjotC0S+we+ODApGzg/Z2x4oOEpb0hbHUnIojGFUYgIr2sFRW4DWrUD0Mr+OShO3aUz3wHXlaIsQm0YPZ3qVtPZS4r7joQi++QFrOSYRoBS5OreekyLFpWjntMVDrH+IlkhvksemDFLeHMLT2qSy3xgMWyH8ovjEf4d+tfwc3gNYVMTlELh61GND6jiVM3I05Kfhkc5zp14RnWnPZXiCS7hMSi9qEFpr4GsSbaW8tfxsWb6BeXDoq4DDYi8Ss5sIvocyWxnEQF4Y=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b7c5463-ad29-4f25-095c-08d8034fef2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:41:52.1474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o+fluRhKrjCvet/FHtUxJTpxAGknw4sYXGjsz3cQx+E4cGX8RXP5APHvsY6wU/C9o1DX2EskPR4YRmo958hQHHYcg/TT7IG0BHpOnEIQMB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 08/15] ice: remove VM/VF disable
 command on CORER/GLOBR reset
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 08/15] ice: remove VM/VF disable
> command on CORER/GLOBR reset
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Remove VM/VF disable AQC (opcode 0x0C31) when resetting all VFs.
> This is not required for CORER/GLOBR reset.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 11 -----------
>  1 file changed, 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
