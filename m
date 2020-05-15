Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE0D1D5A21
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:40:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 297BA87F35;
	Fri, 15 May 2020 19:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88A7s1UboXYh; Fri, 15 May 2020 19:40:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBABA87F55;
	Fri, 15 May 2020 19:40:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C2C71BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9613888E2A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9FcPOUOCXdT2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:40:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A16487EA6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:40:42 +0000 (UTC)
IronPort-SDR: J3VubiOblbJp5xP8KW9N1t85ZjvUHltVIrf5pxO1HSH2n9wGbAmET3ghw4N6ktQEFYALPUALpm
 1sN0B7cbH/iQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:40:41 -0700
IronPort-SDR: HyPmNbguctrVfYmq4yi2elGp1LVyQ6RmPQoYbZ5YcS7Nywi0NlEkixM95ZFeVqqpgvsevFnAI7
 de8+tDOa3xMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="465007288"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga006.fm.intel.com with ESMTP; 15 May 2020 12:40:41 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:40:41 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx120.amr.corp.intel.com (10.18.124.208) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:40:40 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.50) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:40:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WyaE1SRn3SIqeRKCKnLmUXxcCv6liMk/RUXD1I0YNCIhJXg4veXVUe+OaGRMfZHSeFq75M012iUeYLqiq4EbpbAl+cu9L/ZeLMOQkm5l+jT9oksCCpnmNRYwlikkWGnFrt3FcKqGA5TmKDZb9N+K80RWHSGlIuHipgtqieWzs2xQzR1dcbHLUxyLcffZX1ddL295hppywliD2d6+cAvIfypWOXE+/iB80aJ2ikaeDin5hNX8iVMJAJrX7NL28ObhKvJy9pua3W27Ye8gGiaQ4SKzRiRgdyv5bNAAp7JFmAxYgDey9PmwEeEDq/nudsji56JctucPShk9IqBbfu58nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rYgvBHBwGPEnU/Vcc4Jgn3+H1SNrtIZfQRdKYnD4ZgY=;
 b=e/eQj9JfCB0GbeVHoJOnDxoVbMtWfAAM8626J4KwhSY3aTWNqcnsqBhR0hl1ynUvaUn8ELRwbzjB1uReeH/FsSvoWZDIhFlR7EQ2MFxb86M1KnSp8u20SvZWyw5Kxsm+E+2QjUZ+xbiMH92Nj6TEF9tnRzTFLHUTaNib/qJVMy2nOh81MY1I3nBCck4Tb3NoOEpNt3VCsJWLP8kuSlTPvpPEMCIzRDmOkd/HVmW6QAyLO0Fu09rZ9t8tWhqFOMSbievEGwjF3b4xiVa/wRBzDg2woRqzHR60maW2bC1DrKKvlcSfkVTldZuZyWTFdor/PhXQ7W1K/9PHnSCrKbTBag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rYgvBHBwGPEnU/Vcc4Jgn3+H1SNrtIZfQRdKYnD4ZgY=;
 b=vbWdMAKmE3dFtsyv04j75kYKN4MAuWUfxmC75ZgwPHPZuhXkyKjpsKCn1zzmXeRn3sE7DTcNhWkJUtXZIop5BVQSDrjuelCyLP2FSSTreJnhxZDQA+uw+CefmBBprJDwn0/4Uz0mw4+HMMzpd5GsQNSqe/GCHDW7df/4m6SXqgM=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:40:39 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:40:39 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 03/15] ice: Fix check for
 contiguous TCs
Thread-Index: AQHWJNHlwlaBIOcqvUK5h2A859+fS6ipl7Tg
Date: Fri, 15 May 2020 19:40:39 +0000
Message-ID: <DM5PR11MB16593D432CC3CBC0EA7E07988CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2350e6f4-cc24-4b02-0013-08d7f907d8d2
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-microsoft-antispam-prvs: <DM5PR11MB1452340F5CB8F03590D3F81C8CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: umjcuCP9GX9jI0ePYtfA6k1gjjYHDTW9JOliSy93vixZ9xvzH2eV1nnu5vslDaV5Uq/rZ3i2gBI0BNdJeWD442yXw2HwJbXf5m7wxzunhhJ9PF1R7ocmUNTRdxQUSELaruRWL1xZP+jtmptti7JP35AyF8q3fMnnqB+UOOcC7McwYy0d71R7I5I9HBpw5VXefCHXu8CstwsPCbbVFe1qwGx439UcvTfXb+PXiK8snW/eaPO2bFRkvcW66eJ/8oDalWGEshHcZOjsTdvhmmdVbUG07fijMSHbMegmcKdGKt5z37hfWAxv0MimVNn0qDkdQSHBiFPLGyR3MpH43Et5F4PBtKHgxRWN3bFXr/zGsZ993JEUWngbtAm3ygyejIP6vmn0sgKo1YroUpxK9xkdgc6m1auDqR5SZdu4K4Hq2d27g6whjQ3Y4JeLIEKRaJZJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(4744005)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(6916009)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: giexVwQBS06ATZDPWfajgw+Jx7/0eV1O8OiRnT0NOukM9KUKZVzWmWceFQ6wMwqhXhkJ3QXS/We997h4d30kuywk9hKJQ00/FVfJz6OQOGmol9TCdlx2uh6yOwcG0HbLSS6UlRPQOkJogPnkLH7ChgtNbZi8j3eVYa5y/OOoXw7SEpDczr6iUIiO8bIUaS/PoWbAzceApAEev9p5SRBW3wBgxI4/vEwcBsvJlRInxfmCfyOqisX2npiSGsmRE7/RoIkqB/uONjxzqxIHc8zhTPU6UcCtF+7n0V3h0kfqh/RbH903LKj8umcuyObc9Z6RBES1lsO57+n7Z8A098WSLY76B5n2prkIYiT3EM32cj3Di6DEp2zpUQxVVPVIe83Y0o3Io/2dYxrEHc+ejXuEpVVG5M2hdPvfEWMVr2Q+5G+V494zjDsADbVgM4ENHpA+FWTxGXaPopRyYZThWenmgDyxeD9Zz0qzAfnZqiTzjVRCdA3ozVSmLEGjPtZKcrca
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2350e6f4-cc24-4b02-0013-08d7f907d8d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:40:39.2903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6SfjPJ47q8kL7iZlYltGkc6V63cwvQ4hRQlm489gNXcvu7STGWS+WWgUIivIh0Wkuxw8shBNAo7WkPdBN+nPfb0WFjs1E4r9q2klkTreBw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 03/15] ice: Fix check for
 contiguous TCs
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
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 03/15] ice: Fix check for contiguous TCs
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> The current implementation for contiguous TC check is assuming that the UPs
> will be mapped to TCs in a linear progressing fashion.  This is obviously not
> always true.
> 
> Change the check to allow for various UP2TC mapping configurations.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
