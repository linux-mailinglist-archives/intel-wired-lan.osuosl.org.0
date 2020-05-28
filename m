Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D72101E702A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:18:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9039B882FB;
	Thu, 28 May 2020 23:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v6KJqMnigrZU; Thu, 28 May 2020 23:18:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B647F88287;
	Thu, 28 May 2020 23:18:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D5251BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C5248723E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQyijaV3LoZY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:18:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A0D28721A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:31 +0000 (UTC)
IronPort-SDR: aQjjlt0XF1i9Ajd465oWsXoSPqQj4GLoZhjSXMGxdVxyl7cAtB7a2T8BfEd++TBDam0fUQM/+a
 Q3I1HJZxj4Wg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:18:30 -0700
IronPort-SDR: 1519FbcPcCQ1+JoZhp02vjX/TrzuwIdIh05uFBVFHmR77dtW8Bj3C9QzCP+zoBsBwvuzzV5rY/
 kNyWE3m2nLBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="376532680"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga001.fm.intel.com with ESMTP; 28 May 2020 16:18:30 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:18:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:18:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9zL9rWbV3in6i8JCSEVnRBOr6j3LYKBEOFchjJRLUWi3b+DKFbOmI41v3l93/HwDPv1LoTVa46YCDzpIHADKOhiYE0lTeBBSZzny1ztWvNzkDC6LG0gmw8o9Z2g0oym2jY2fnPSH0agEYymPp7PmX62pVwk+w2ZOIhN+DmForzWAs8AgBWP8qX1LNbxPzDGiO93QbK4GU/8RmxH+WRBijv91I0GwDlMCBzvwirp4SOLjVutwgJbzpD8msl79xwQgkGsZIxeoqEiN3hffclMY6GSj038rFcOhY6WhNkWd/qTLthAdAswNzGpxlOJwyVZsq3/pafiAdUUJST3DqB7FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Te3Tx+uja4oVDWtBKe8ge4YiPfj+As6SIqn6Ge9A1o=;
 b=HxnoSfHcP9einMsv+yrNRz8NkYpwfvVr84YDvMc3TqbKVvMA1WJiE5LZykXiwKFXN3TDqtQFBpchQmZXHFh5qghwju/YMB2EGQL/AiGCjFKGjwEwE/cLZVHltSFt0VKGClP50d/dqzJUHirmYigpN33k9J9dRZAybLp0WtsfTs6Qk59g3+Wci9pZXVLoU4j6mPPgaYeiHgKjddT61mxZuHatqhX3qaKJIWeE9aEOAKj/NnCDggwLsmqY/Xscmr50Av6bT1RtCLsjwFwRgYPSmp73kaH36EmuaIlXFv3MJIkkAk0hsU2ymPqAOeT4g2ORYjcqQzgFMbQ1gfgnxH7pug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Te3Tx+uja4oVDWtBKe8ge4YiPfj+As6SIqn6Ge9A1o=;
 b=i4c3A1gTQxIh6Ca1Jw5x9gQMLttH32ksUepG7+Oe5QdPlvtaVflUiophxccAf/Go94FtcfYOGvIkpNZRy7bm5nbeWxt8GlFPklSfq4VFa9/81CqZ8rMO6vVxCOQZFS7Kv9eUeYR14MvJDjxaVeKlG1A7PrJduKwLgJcAwcEKR9U=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (10.172.35.20) by
 DM5PR11MB1771.namprd11.prod.outlook.com (10.175.91.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17; Thu, 28 May 2020 23:18:29 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:18:29 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 3/9] ice: Fix inability to set
 channels when down
Thread-Index: AQHWKx0bKVoW4ARMLESAxiSUELjOx6i+Nkqg
Date: Thu, 28 May 2020 23:18:28 +0000
Message-ID: <DM5PR11MB1659AFD89009B1FAF8977F658C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: ce83e3ab-a372-4c33-d88f-08d8035d6e54
x-ms-traffictypediagnostic: DM5PR11MB1771:
x-microsoft-antispam-prvs: <DM5PR11MB1771C6AD64766230C45DBFD78C8E0@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DCTHpN1p60R0LfKvQy5bST6p/xgs3jnw6UFQ1r7v3JGDdCLbW3jdR5jCTXxTOCE+w8qHPFKaRh/SzQTI3RbeyiIMc0neh6rIRMJwxGBit0GpW915BuGi13ppYh3Rx6L2ziVe/CpdinaTLbDkMTAl9V9DuElOLGS8GsW18c+9q0t3U8itUbMxG2Ap1+dprEAAjOSvChBspgZQlmT/9CBBrBIALxUew99hYaBkcQCLru5CmmX4WIPPWtdl1MgOwmrtKAx68I8a0DaUfF/to0qL3weekCy8iNioUtdoVcxBzpSlawT00y3vW7RH0UJn25VR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(6506007)(53546011)(86362001)(8936002)(8676002)(4744005)(7696005)(83380400001)(5660300002)(66556008)(66476007)(66946007)(76116006)(186003)(26005)(66446008)(64756008)(6916009)(71200400001)(478600001)(55016002)(2906002)(33656002)(52536014)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 21xQ436WRLangQ11Gb9RX/dFN6F1StBUZonwpSBuTr+D71wHZ631les7+OOp8azrCJYS7hXOD8rZ4UfMMneAgJg9Ezmyh+x9sBUcqCjF9FO4V4d9+uhVFAzJwFpzR+OorMSlLn8jHOwhTs+745HRcRzbrMl862QeHzJhwggrCyo7GxdiMmapL3IYZHxi0N+UpzQ1f0DpzyHbt4F3W/26fFCwle+1JJ677jObFBrjJ+zs3ZFDnAivrS39LCfpmKnwKJohO7I4HZwzp5oEJUHS32MejrV+p5xMyE5Tp/l1U8Cb4vohc1JN8+t/ROzKIneDW1iTLsY8yldgUydXYQKLGrW3AIYT2VogVLi+zc1XA1bMzlpccKt5Y8/meOAwggx7f2r+T7BFG7o1iDu5UKcgyWfZV1CU5xaJa+i8NvGBl71LGo1ANfOiYglLZHyA1ZsKIIcYCQxsERlNhSy/VfuSdXsqhNTiF6+wxOi0umgkJN+Zn8BJK+A0EpC1zrNLM9X/
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ce83e3ab-a372-4c33-d88f-08d8035d6e54
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:18:28.9661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xwYbTp7UFJ393Xuu1VKTrRFXn+u5vCmodxjcr3vIayLiAIL4lJsdyxeinavU01LIuPGpb6kA62QtFffNfe+mQz+NSskEdIdQW60vIBJN0tU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 3/9] ice: Fix inability to set
 channels when down
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
> Subject: [Intel-wired-lan] [PATCH S46 3/9] ice: Fix inability to set channels
> when down
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Currently the driver prevents a user from doing modprobe ice ethtool -L eth0
> combined 5 ip link set eth0 up
> 
> The ethtool command fails, because the driver is checking to see if the
> interface is down before allowing the get_channels to proceed (even for a
> set_channels).
> 
> Remove this check and allow the user to configure the interface before
> bringing it up, which is a much better usability case.
> 
> Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ----
>  1 file changed, 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
