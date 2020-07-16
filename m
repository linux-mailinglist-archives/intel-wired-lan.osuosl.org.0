Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9736D222A53
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51F10870C4;
	Thu, 16 Jul 2020 17:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SCSPx8nVyn7F; Thu, 16 Jul 2020 17:46:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF13E87317;
	Thu, 16 Jul 2020 17:46:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4EC081BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4A43789BC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s1UeC8cYxsrz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11C1C8AE06
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:45:58 +0000 (UTC)
IronPort-SDR: mLkEKcc2Y6uzyotiIDhh+mrNUZAxgjgl32DwD97anuLzGa9zo8k9vHBjzSyxmM0oI3NvO8Ji81
 BdHWfIzvNTAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="214183684"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="214183684"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:45:57 -0700
IronPort-SDR: Xgucv9Rb2/ETSdKxxlxpLw5JR4G/fnU2OCGadocHRM+DIvwarUGnVIYYASCDjaDYkvIsMAVRqr
 Vw8WJFQ0LuBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="269315431"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2020 10:45:56 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jul 2020 10:45:56 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jul 2020 10:45:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:45:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U4SCxgR+X/v6jQEchuF5e7HDj/ZH6zI+2Vh0r0Nq52YR+HzUyC6ClAX7oRFaPvCajQvdqt8Pk8tGo77PyHHa1vG5XRIqhEcrPFxm/xCfKwDaM0MWiqA5MUbc/APL236+Nc9iiSc82At697LSvGRTynkBICrbpA4IJuBryFGIZjN8xd3Beb3GnMAlR6wBrTT80m9+YfApaejYKm0Ru90fwoFBNUqONe2lMGa9lUGXRD025pwis1R9kwTBu0rUo4ggL0ohVlBA5zRyuBALYDmPiaxlxtzP1GfXiXSN/4n2NAyo8xuaH5+/cWNqmCRIrWs1uZ72xDrbIC+jjqNCwvPDiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YdmwFpMukmqnhUCQfVgKnTRbFMdRfypu8nKwhwhYivM=;
 b=NjytJRl6x9KmUGZfOYMSGCq7uzIYPkRUEd8M0jvvzhPuXQYrteBTmKuTAMTQYGYs+cbAB8LKAxZL261L3IIP34JiBAh2LFuLB4E/PIZW4MAM1IA8I8NEkktsPvroq0Z3irZ9yHi2sG2i3KTvJp9kz90jgm0jHwvoiIzNxDoVA8RHUZo5xK9DrGfTJSHtbwQK2dg1xVlgBU33mSQxYTLemLVERUwR+9P1bt5yHpzYjqfuYTOCfBW4EbCU3ht7ST3yGLknuHrQtchzJvgby2L/HYv1kJFe0Yci9KpztLR4tbKeIaD4E2cGmTZzTb/OtUieFxG5QobhAV2iTJP++FsEyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YdmwFpMukmqnhUCQfVgKnTRbFMdRfypu8nKwhwhYivM=;
 b=jZLtljqvBioRHOKZI7vexn1jXxLn5r4IwwvMpcyltDu22x1WWEwhV+SpjgFPwyJfBQQhPGBdzvGmyNLMaXyVdVmOFn1BftmG1FXJoHgqreexRy7TFcBK0wuGXomiOpeQED1nsZXubA/M/78r7cCCBVCHxlKyh7DoUyhj0i01Ims=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1268.namprd11.prod.outlook.com
 (2603:10b6:404:47::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Thu, 16 Jul
 2020 17:45:51 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:45:51 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 05/15] ice: return correct error
 code from ice_aq_sw_rules
Thread-Index: AQHWWVg4n2C8xFFkek+L+21iQuLfk6kKfx8Q
Date: Thu, 16 Jul 2020 17:45:51 +0000
Message-ID: <BN6PR1101MB21452BF5A905E918F70F34C38C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: cf97abe6-3bbe-4dba-9f2d-08d829b01515
x-ms-traffictypediagnostic: BN6PR11MB1268:
x-microsoft-antispam-prvs: <BN6PR11MB1268123D38F3F61E7B9B76878C7F0@BN6PR11MB1268.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3Ge/8oQfaxbHeKZ9LHh3o4kvhIikb49LY8swv12hsjS6riE30FxV0oyBsPLpnAf1hAtt93N7/mWaGI4kyqpVeKM5Y6/7P94h+i2nNnOieSfCgBUIo5I3pgUS6lGlG9zUWRruBLyJL6ikyNdt7qGtn8qB5EIuW1Yh9hFdiR4HFJGsV0GMaYUHZigmteufJEQLiUVBlosP9uHuMU68PNjOZkqlm8iBSY0+IDbEP43sf318sRfqf8VMJmwSB2mgWu+1jzuZz02cTp0QnjVtiEFTsxbRr9vC+SIC8l5q4xLJUJRO4JKlVlJCXVm11OoBvQFS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(136003)(39860400002)(376002)(366004)(8936002)(316002)(83380400001)(66476007)(66946007)(66556008)(478600001)(7696005)(186003)(64756008)(71200400001)(86362001)(52536014)(8676002)(66446008)(6506007)(5660300002)(26005)(76116006)(33656002)(53546011)(9686003)(6916009)(2906002)(55016002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ebRkYCl4l8Ci/ZWOe/ionGpBf6KLIQpG50Fsdl03LQO/zNF3MAJCz4ZjNMezW9G9CcB5rru391ZSF0Eu2hOLEPkRB5zFkI2cmKi6qDtLVKlvHX5OXHjSgY34Uxx9o+2Bon+HxZ6H9Bzr9jwaJ4+xEF5Jbkr26lppqSOgD7rUII7hPvnpLfNXtdL1eiZ3Fj9e+a4ORJ+aR30oQqOt3Y0asX3cYjtbkmDBIeFwt0uJ5ogChW0OqY8s9nfN60grMGCvyE/SMmX4npO7E5vLsq2Z3Pe2D2p+6/pmdYOMhVDmGgiBR12eXxlHfZ/Ci9XQtdBQggEBqI5iyjllyzKUuhZZdVOlYyjeR7SM2CJUjlE4I7ta5bjeQ4cA8pWMl9wFzYUUUfIph/S05WtD16EOnhe3gnmhx1BiFGm1nTT0zua3sI/cLPoENc+Kbjd6sT0s8gRXhkNVv3P1ZstQ7WZ5l8tonUGdMUE2NBxyBW0P9ShvVVY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf97abe6-3bbe-4dba-9f2d-08d829b01515
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:45:51.6207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LuFC47Qu6Xvj9zVLfza7F12ttPsKX1jsZ8rKaf7BeQueoaOvLNMwLCsE2qMbooX87F2tnnxGIl137Yu9RhFP1c3W+OJcUIbeB9RWexKgRgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 05/15] ice: return correct error
 code from ice_aq_sw_rules
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 05/15] ice: return correct error code
> from ice_aq_sw_rules
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Return ICE_ERR_DOES_NOT_EXIST return code if admin command error code
> is ICE_AQ_RC_ENOENT (not exist). ice_aq_sw_rules is used when switch rule
> is getting added/deleted/updated. In case of delete/update switch rule,
> admin command can return ICE_AQ_RC_ENOENT error code if such rule does
> not exist, hence return ICE_ERR_DOES_NOT_EXIST error code from
> ice_aq_sw_rule, so that caller of this function can decide how to handle
> ICE_ERR_DOES_NOT_EXIST.
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
