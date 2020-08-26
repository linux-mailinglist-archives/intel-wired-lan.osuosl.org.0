Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 341DC253A29
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 00:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCB3688052;
	Wed, 26 Aug 2020 22:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4o-5+zrpbMnU; Wed, 26 Aug 2020 22:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E44B86988;
	Wed, 26 Aug 2020 22:14:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D0E661BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C803C86917
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KoLuASNahVbZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 22:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A57308682F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:14:39 +0000 (UTC)
IronPort-SDR: 7qKQOU6HlvHp9XyPT5W1hJvELOjVcbDaEBcqU1+gHp3Qjt4duo5Msg2+OuJmSrQLmmtWQAaCQA
 zZ9JaYqRoSGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="157422764"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="157422764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:14:38 -0700
IronPort-SDR: mCGwqzy7s+jacarLTAcUY9Jnd/BIIZ8cJZvFyg54sBYdKFbkl0umzX0uonoOKExR10+bgwSpkP
 mLFnwMbSaoag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="329373908"
Received: from orsmsx605-2.jf.intel.com (HELO ORSMSX605.amr.corp.intel.com)
 ([10.22.229.85])
 by orsmga008.jf.intel.com with ESMTP; 26 Aug 2020 15:14:38 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 15:14:37 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 15:14:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX151.amr.corp.intel.com (10.22.226.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 15:14:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 26 Aug 2020 15:14:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BhQLdFxbIp3VTHbjpF4QUFcCHmT4G+MoMidJOuvnsSAyuVClNzmxWEjPEJhFkm+Xmkrp+RciElDWnBXbhDZcouHvi6UXm7oXoN9QJbFnjLTuvbw9MndPW7e6zpXkslnALhe10f5B0YLrI0rCkH5AgTlfBWd7+dmsHk5BOoS33DPfzo+aMpD1yTsy3SDp+pETylJF8/wOQL2KtIA4HTJLRx2SFM2MzEmmuAFj+R8AKqfCOe/w/JMLc0mmUo5WcV0DGXtjvAUHLZwrfsYN9onug+oijVP6vDYkZcEsKJAbzs3QcZjl41e3YO2bMUMf1HIKEhcHqgxrUXQe2lGSuIBpfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AM+qA6d+7cAycRg/JPcttsgBumne2XnMixEdCVyfx5Q=;
 b=W8JgROXkq0SjjmCc9c6J5k/lPafWO5nwoF6GtNmr0bUqCPvfwbgMr9Gb/eTueb8PRJDnjosG7UOo4XyROItjEPgO0YZQ+ZNLZ7sRZ2OwVVyjW5EVmhhYsF8XvTscSMAu82JMlFBuFKCm0jp8QyKNEn9yODT8YZ2EhZS/o8ogh3nGjZtjVtWVIXvpHNH87XEvzac3olw4JiVkX1hO64fMDVrQnKHJrdi7zxR+TshyPtZrSvc9IG0f8huYI4771eNFbwr5PqWrEAGO7QHg4axJyoTvmHHBUn8nLpKeT184qDtHRLe8Dapsm4wh5O/zJuk6d7VTx581X23+cCfvNfjjrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AM+qA6d+7cAycRg/JPcttsgBumne2XnMixEdCVyfx5Q=;
 b=YWxRnOjkqVp8jEtNuncuV4tAamHB8I3NIPg+Pjv7y8rPvNbIIugFf7XemG/N9OTDkUw3S26+SbLVoWE23To0fd+0qjznq8ccVXEClA41svc1ij13SV+76FKFkak0O6iIyjn5ww28OKiLfYlBHhl/FqiXAGdye7U3epKqZzXNlhY=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4122.namprd11.prod.outlook.com (2603:10b6:5:195::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.25; Wed, 26 Aug 2020 22:14:35 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 22:14:35 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/2] igc: Fix wrong timestamp
 latency numbers
Thread-Index: AQHWdbkfxfSAVpXuq0CFf38F6hE/lalLAOPg
Date: Wed, 26 Aug 2020 22:14:35 +0000
Message-ID: <DM6PR11MB28908C87187C9E1C5167067FBC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200818234002.3057510-1-vinicius.gomes@intel.com>
In-Reply-To: <20200818234002.3057510-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d443185b-8882-4afd-8f74-08d84a0d6ab3
x-ms-traffictypediagnostic: DM6PR11MB4122:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4122DE6A451CEC76B2E0A453BC540@DM6PR11MB4122.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g0iQMhYdNRTJVTPkeq8dGEN0W6AV+jrTbn8OMepQzolyIsgc1HIVObAV8dHP/+rb5vbc9Civ3MuCXAuEROXx5Dv8NcWHalvoPFSOSse8N69Wm2w/eiAlhfbV6ToWAiZo2Ca8hkL56IytjNwo6f1xq6tRsvs40TiyryUamTBUqwUj8mduEh1wVuHj8aW1ci3CJeZe8DDr8k14MjsjDhGKb3628WwflnXjck4K+g2tDNg/BOKTSMduBsj94i0GNYWO3iyq7jUlzFW5cx0M+dwd9PBMgewqAcbz5x0e8/svQVZyuqNk9ZbkizGOFQ8OXtfYVtIyX+1mgJz/2TBoBSEkuw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(316002)(76116006)(186003)(2906002)(7696005)(66946007)(478600001)(9686003)(83380400001)(71200400001)(86362001)(55016002)(4326008)(66556008)(110136005)(66476007)(64756008)(4744005)(8676002)(66446008)(52536014)(6506007)(8936002)(26005)(107886003)(33656002)(53546011)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OHyZapje8LxL6Ze1rC+YaRrmui3u+qtn1utG4K8VCHuxZrWCzwAqiRkMFI73HQRRU4yUT5uiGEq+7RZqlSCCzUi/v4ktld+rytSHxaXf1Icwn0Nv8V8FsJy/hJKb2RESVmBBMeK46mgEF2B7qblf/UPdEdhEDsjs7B3BiGuVNQDhT+P0pPe8lC8oEsxn1CDu61zpw+RF/JK6QqRPV8Fs4aBa9ubEGcdU8DG1pwJai0Sq9fDoA4+88wYOLp6d4GyxQduKBwov1yUUTLnU+UaZ4Y8KDE1i2h8Owc62xhdT7RboqzsZXPJQlEbOX4uB0Heme7ILyjeS9vZqHO7wWIu2waYEQqUGTzsBeAe7306XxClVv0PKmre5UgYtxdm3258QE+hBZBJHsbRovlWrRGihvgJqzkQ+HJR5RWZN0CNOf/vHwwENcB40OBK/VZPKEpL/DnQRxxhEzz/m69Nng3Imp48P0qbKid4digdZPcbjLjyr4Xh4n6F8zFNkK/eOAW+RwWEAg5ruiOX0TFabpmb7mkHx96oKMwN2BSIB6vtaGXHgljRkdM7WseUJxeSRmjtoaImany8C/1KL1ZNz548MOXdIDaNdGRi8V6gqByIyVHf2KFWWZwd54pnjXbZ9YdeGst3vGv3owSFt5OoKazkn0A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d443185b-8882-4afd-8f74-08d84a0d6ab3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 22:14:35.7618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NpYee+aNVkx826WCb8AY5C+5hEzbhmeTWWl92ZYmQ6Msq/6iJ3GbTi4jwHrLtUZXcD5PHv/2fEN4r8P4wsIXlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4122
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] igc: Fix wrong timestamp
 latency numbers
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Tuesday, August 18, 2020 4:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 1/2] igc: Fix wrong timestamp latency
> numbers
> 
> Changes from v1:
>   - Added Fixes tag
> 
> The previous timestamping latency numbers were obtained by
> interpolating the i210 numbers with the i225 crystal clock value. That
> calculation was wrong.
> 
> Use the correct values from real measurements.
> 
> Fixes: 81b055205e8b ("igc: Add support for RX timestamping")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
