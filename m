Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6E11D9CEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2706C886B6;
	Tue, 19 May 2020 16:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCbCFd9Hy-GJ; Tue, 19 May 2020 16:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D34BD887F3;
	Tue, 19 May 2020 16:35:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 306AD1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B44986C7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qlJv_Tb-N5v2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:35:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80F2086C6E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:35:48 +0000 (UTC)
IronPort-SDR: NjxDy9S8IvH13AjPMUO0hO+INb0p84RN781mV37XDL8LOn+z9X6ErfnoMqQa0FJlfzGcls1AbO
 tUEdfQTFgcVw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:35:47 -0700
IronPort-SDR: Sv42znPmX/rCv4SfBZ39swkl+CzxjE7+IAwZGS0H5tDaChHYT4oXek6GK9PEirPi/LUMzef6ks
 CGhMqfE3qPtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="254773206"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga008.fm.intel.com with ESMTP; 19 May 2020 09:35:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:35:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 09:35:46 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 May 2020 09:35:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:35:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mx75/D/guG85LuuobOe2z4wI8/CZRRx4U4pDsiYREsAzFSdZFu0xbPNamwabnLdomAglngr6L983ZHjWzHpnZ8F7pKoor2jbGuM48jrmdzaIMtfI5lwQ8iThlPYkTQCj/G5/hgkW55RRdb92Vw3iZv35wEqCpxMhwqW86NJEEdtOwtXQqOh3h4OAKuLUUAtHURRLAgmdbym0NW4T+aq3JQhzoP3Us25kuINDm3zFc8E7qE2+WDua/1vOeKZQY8pT8nFGFDsdI7FVGzO9gRWcGw3I3xzbFsBy8W8plClDI1nrQAHuE3i934c3pI3qOQtRhE9+XzhBRddpLwCfX3UMlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LnDzLqImdkYT6vmige8kzUl5IG5IFakPNdPT3wTRRWo=;
 b=L27Q3Zjujn4I0Cfs8t30PAtN8+D5dzZIhmefffbpDMzgE42NkBBdPkoq1K3HS1mbraZsOCC80GQ3TRWfIVzRRM6ZHxIao1kFp5nmCx8AgDVIE2t1NQWYp7ALl12wxB8Ro201HXimwrL//ck61P4F3U2qWq31GaXyh+/NiVXlka2qqmO7xMxE4//GexVZlyUxsrpMIVSsYXSABIEUb44Y9YcbnunO+mxFtKj1DmuELRQNpJRDbXc6rejb4L6vNvHaElbTfhgKUveUCI6HA0Z08N0Cd2S1nuf7DD8lZkyP4S5qjMiKISkxNTocAdlGHccv8I+HZAL6aNFomEUcUFKkbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LnDzLqImdkYT6vmige8kzUl5IG5IFakPNdPT3wTRRWo=;
 b=YObRcPCLbH2wQFeEG0275Nm6mwvNSofpAvtQG5CSYolSRqpf3j8QiOBA590PVWozKMFA0H4S1YyXaA+qtVB/mBlRg9Ssm/Ck4cMNV/sTEHoD7jWcdnKYW2pyxGMzCehTEEfgYrANFduKmllqByYFGAkZ3KkGDAOZpVsTeBPRkiI=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1642.namprd11.prod.outlook.com (2603:10b6:4:9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Tue, 19 May 2020 16:35:44 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 16:35:44 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S42 2/7] ice: Support displaying ntuple
 rules
Thread-Index: AQHWJ/lfc0mxQxSkNUqDPCWg1420Jqivpwrw
Date: Tue, 19 May 2020 16:35:43 +0000
Message-ID: <DM5PR11MB1659FC5B468AF1A71DE097A28CB90@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
 <20200512010146.41303-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200512010146.41303-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae8fad80-6bb3-43cf-ac6a-08d7fc12ad24
x-ms-traffictypediagnostic: DM5PR11MB1642:
x-microsoft-antispam-prvs: <DM5PR11MB16428BDDB3FA11BA58E2F3218CB90@DM5PR11MB1642.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zPhxfvXbwKszEfSpKuf7IxHtzx5DKJFyFCDSIrAhDF9+YSpVJlPrPfAifli/M8+e6OrDzg9NN3J6m5zja/gPjZAMl+TK8zfj1X8Hu3Yj5y2VX7aGei8zGxxshu7HQrWvreEOCpHjNSqJQRYT87Lft33UP5yTOFz5SyMof7lDUk4QxRI7OVmPOS+W0Gly/fmJnu2CKgyvzDgVHm86d5k9l8GUv+0avyUTyCsuNcpgJvoamKPKEql+zpWtWdBTV7NTmRSIkdteMW/UpqeA7uUIpXYIdktMhO1RWQwOOrbom4zsK7v3G3I4fyxc6JdHi+aqxzc6urindR6joCOa8LDZ4HgwUmPc37xn8Ph9U8UGpJfgm6WHfds/UY/TyKd+k0ZEqTGEdOTGjxpC51xTpGn+qGX5J1hORMsQIPDUq3JNVF8ejo1ky0M7UsD6mdd0Ef1r
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(39850400004)(376002)(346002)(6916009)(7696005)(66476007)(66946007)(76116006)(64756008)(66446008)(66556008)(5660300002)(8936002)(6506007)(8676002)(478600001)(316002)(186003)(71200400001)(9686003)(86362001)(52536014)(53546011)(55016002)(2906002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WhY6Ejrqv+vYGY8aU3zbajMIasvJpcqfGKLV05F4EB5iJeMuV0hdudenVjlGr0q9NBkZFRWnXW+uiTbLWz9IU8hSpvRfB6n6JijhjtTdQaB8X+470rV1p+sB0mxfjgfDuRxd/TQIEpMd3egoIGF/ApYSfayyzaYbVqYEfXRciOeJSnq8DnAZSmK6834VoH9DQENrd3vfEz4bavCvespE+I7HolWu3l39VlRyDcB9bKT84u6cA/mEDQHZkCXwH5Id2MZ+IaNy5hp8yQiP7xYfgfCHTKxuV5H8Rxv9Vmvo/oaNVBuKBbBX/Y+hQjX7GVhRbai18wrby7JsGEJzVpvGNHIO00ZEGfSobuffXPMn6ZWVyKaIzSFIxEj7xn1Ugiorim8l0Q2fYR++HAdeJqXNCek5InRHL7Be+WFHnLyJ578Ir83xBX8J1H5JsjRI9g3i4jt+ygcNbgpZyhhT5cJ7tKh0NwRLyN/NPpnDDuUSTFQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ae8fad80-6bb3-43cf-ac6a-08d7fc12ad24
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 16:35:43.8808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0sWGhwhXQYKeldDnPmTWJ3+6taGPUN0LMgfqa8UZ5+6Vfbo1bGjA2TrJTBm6C61dJAXBInEx6Sykx0k2hh6sOit9N74sv2wH4x6n65EHexk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S42 2/7] ice: Support displaying
 ntuple rules
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
> Sent: Monday, May 11, 2020 6:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S42 2/7] ice: Support displaying ntuple rules
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> Add functionality for ethtool --show-ntuple, allowing for filters to be
> displayed when set functionality is added. Add statistics related to Flow
> Director matches and status.
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   9 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 ++
> .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 161 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |  33 ++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  47 +++++
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   9 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
>  8 files changed, 280 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
