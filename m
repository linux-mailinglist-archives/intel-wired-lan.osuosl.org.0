Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBFE1D9CF7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:37:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8167922925;
	Tue, 19 May 2020 16:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iEZANVVDYCFC; Tue, 19 May 2020 16:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5BB272262E;
	Tue, 19 May 2020 16:37:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E1A41BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26ED288026
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sGrNsA7LbgMn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:37:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 61F64887E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:30 +0000 (UTC)
IronPort-SDR: BzaTF6UAmyAqe1jPpOBf4kBVFWeLsRkURh86XFt6Po/mQAC4fP4VMeg00xAdbCtu1UntYRrC94
 jBv2R4tMgJHg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:37:28 -0700
IronPort-SDR: cUEJa2Iymn1ey1o/c6d9AK3K1Z2b6wG1CHohc6y1eOZFYAS18z8ZQhPtEwi3XykfaxvkSv8Mo5
 5XSCKvFexi9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="373780265"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga001.fm.intel.com with ESMTP; 19 May 2020 09:37:28 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:37:18 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX124.amr.corp.intel.com (10.22.240.120) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:37:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KouvL+2Jglon1XyiWTv+CsI+TZXr4wnT9vwID4mZRJyt7qyhMi1zKm3t+eqLhB5MP1H4LZdySbNAFbrB59OQenJLew5veEjy0iPV3aUyRu9yYbmLOiwbLxbG+pU5yF9wOcKKFrzY0ruzOUe450wRXESz5Y71aFJ24EqFAmMn80xhjzAKo//pX1+MxVusg9V2clH2ewShXpL0wcWSe75cMKnnpTcbIqzwUt/0q3cjO48PTQAxV2JWtOL9pqrykpDXdaekWQdoBQYMoVDrOqonzscYY2BH4WUurn+LotsJxSfokfvHSA4SplJ+9lS/Jg/78OJMpXLMU56LyUCaHDj2bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WkByz8zHPNaSumK4FAvXc2a24QCeWM76J0P1g8+UASo=;
 b=aYS9FTLg9V9YWB9sDdhYB6qu6kg+0CtMHsmaJZDL8D/OD2RccCMfFk7O0rY0Na9jD2dBGQ/SPV3CXdE7eAI7DYK1Enn2LugwVKCkZVd/7ybaSUvGp3qPzVl09aI1JtbtXqB5pxXyenoG7pcJPcUAL6qcZ428WCXFEkKQlKTXWgPWVbiVNJ00N5CsfO/8tvNiV/pC0s9idGSju0XYhvbO2QboogVBaM0t5bvyzwSj7ydGMy1V+SATQiHwPVXQyrt3VFWcNqWMFaOc+ZEHhzQ3zlxLjwLQbibRVpF6ZgYxHOvp+v+ISm6a4StchsjBsJKx1W5aJFskMaYuwQqU/c4Snw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WkByz8zHPNaSumK4FAvXc2a24QCeWM76J0P1g8+UASo=;
 b=TwLZRID/+EhAHZG8kiL+iBs8Ck4wLseCno4HPVkLfHABcvHyC+OcuMX6U5FwbTeLjp3OgREvodFZ6rTApUcJRe/5He/pS0JX+beLmcl/JrJ7MvmtlCiUuWvUqbZ11lMj9SlH+7z67yHI2M5YfXJLHczGkeWuxPJKzPsbhlkInKI=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1642.namprd11.prod.outlook.com (2603:10b6:4:9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Tue, 19 May 2020 16:37:16 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 16:37:16 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S42 5/7] ice: Enable flex-bytes support
Thread-Index: AQHWJ/lhBOlzSLOhsUOTcER4mCQusqivp3ew
Date: Tue, 19 May 2020 16:37:16 +0000
Message-ID: <DM5PR11MB16593FBC79F0040658C412F28CB90@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
 <20200512010146.41303-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200512010146.41303-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: d13b2eff-1f66-40f6-ac3c-08d7fc12e47c
x-ms-traffictypediagnostic: DM5PR11MB1642:
x-microsoft-antispam-prvs: <DM5PR11MB16422538C7617C8614DA96808CB90@DM5PR11MB1642.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LPmJTzYtHQ0+EgleoTQ0/DmplN4Po/WSkM85vkSXNrxNsR7cXCP4Ll0TK672ixpAAmOCNQXiucZbjOVtKxEq2qoKJ1jhVw/4dFsOpl1zxVrKTVTggzQ1bjZ8q3btb51/p3gUaPAQeLqRNwuO3RbT5NrZPfC/JnBCmJ18DQcl2VKVHmkD/zuEsJrYabuO/rwExjR7YR30gBz08SByCVf3bx783YXKZtvSsAm7y20uPshs7ip5d/3uk3851Qj9BHY9LhOVjIBt08iMpHiZiFCsPGtnqyr0jNyfCCRK+lnT6AidE9uNIpLbwCo5DONphU50tA9/F5yh/o9Q0/O8XzsItxFOXC71qCBwLyRMH7G6df2rd6sCslYwFaMFCaMs9YEeK5UDzXV8IxvDYt8MEb8IjsyYOlmlHTm6DsL8WD1sHIVNYZ6EhCgLHOU7r62Fj2dw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(39850400004)(376002)(346002)(6916009)(7696005)(66476007)(66946007)(76116006)(64756008)(66446008)(66556008)(5660300002)(8936002)(6506007)(8676002)(478600001)(316002)(186003)(71200400001)(9686003)(86362001)(52536014)(53546011)(55016002)(2906002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: B01DHlV7lrKwrSG/+TBvDZRU3T1OAjsIc+BjUMvu2X5KO3D1PWjeVcBlCyopGNio/zGLXusIYKOxWe51k/LTr2Ch7opJtDLcJYciErGNpwgRUdNPF2FCUxKyHgfTs6rzoL8IeEyBpuUjwdwYuRLCUkAoK4PpMnCdU/B1UC83MvdO5h3x3CsHpkC8NSabXPCS0PNeImNpioVWqB4/g8gkokCj0LgVNFv17eW699RR7fIKcc3cLDpkus65SVwGJB/ngEpUBM1if91TylrMY/N7ksof2NwGYYUOSdtzdW2Yb8cBSkPSti9LOP/WuUGLCGuaxfQgof62RuClvJAfxmacfQT73COTEOR0bZRKzhd8zCC5onVcXydhRS/U4YLBY0GtX2J9ag5b+yeo7T7UzNfZm34Aq9P5iERcKbMH7StvjOITU1GxY5xlYjgOFfcjYCiniPlqDbAMnXCqhS6KiO4qsCfvsx4hJwBOxTZeU4wfnCY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d13b2eff-1f66-40f6-ac3c-08d7fc12e47c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 16:37:16.8121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n1v7chnz8WwFXIrm/0vpXOBb0Gl+pFJpDvfnWUAEAGj7FMWRByG+f2Qvj0WRMfHZVAQD/P3MMil3rGhlUgCvFaYhxlvVtmMybRNDFOsaMaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S42 5/7] ice: Enable flex-bytes support
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
> Subject: [Intel-wired-lan] [PATCH S42 5/7] ice: Enable flex-bytes support
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> Flex-bytes allows for packet matching based on an offset and value. This is
> supported via the ethtool user-def option.  It is specified by providing an
> offset followed by a 2 byte match value. Offset is measured from the start of
> the MAC address.
> 
> The following restrictions apply to flex-bytes. The specified offset must be an
> even number and be smaller than 0x1fe.
> 
> Example usage:
> 
> ethtool -N eth0 flow-type tcp4 src-ip 192.168.0.55 dst-ip 172.16.0.55 \ src-port
> 12 dst-port 13 user-def 0x10ffff action 32
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  88 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |   3 +
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  13 ++
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 150 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.h     |  12 ++
>  .../ethernet/intel/ice/ice_protocol_type.h    |   1 +
>  6 files changed, 265 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
