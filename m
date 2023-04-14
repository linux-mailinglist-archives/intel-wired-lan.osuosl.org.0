Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5EB6E2962
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 19:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA68A6FFD1;
	Fri, 14 Apr 2023 17:29:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA68A6FFD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681493389;
	bh=s7T9InajR7ese0iulqx3ivSAdjcUN810SecSx1C+OQY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W3h/+Yv971K6re17OOx5uXYoFGO00Mwruxqp9cSck6FEbQPheFrz3G0ObRM8dXgzU
	 k0/DLJ/pF9a/wmlCkmLhFN0tfjWWTZc/BjTcY0/7sPFyHiJQp/X4Izd1UjjEF7MDtn
	 R1G44mMNInajVHjmN5JzTbKyuY4X/uhZlIcgDTR2cgUe8AOgIUqDAD881EFFLIT1Il
	 GqNoDrTNsAc4GW9ZmGpcMv5xTCtXwpeDF8PhJrhGUF33EwNQPj9GGPT05hKbQUsnQO
	 BHj5fX4lXuB9IaSpCl1QZqeotdR5AxXcehvXhNZh5MBCozaCwzcGY3bABtsITc4fxJ
	 OwJuMuXQcadhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8DmvhFR6DIxA; Fri, 14 Apr 2023 17:29:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BED0460B0F;
	Fri, 14 Apr 2023 17:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BED0460B0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43D241C3D4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1840C427BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1840C427BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xv74YcBAWbOR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 17:29:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E8A842788
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E8A842788
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="372388315"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="372388315"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 10:29:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="720357669"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="720357669"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Apr 2023 10:29:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 10:29:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 10:29:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 10:29:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4q1mhb5FN4qpgvj1nLqjDiICf7D5m4O/Rqa+tiuvOoo9NVRh0S1Erky2uxdInuRR6HkPoN0NWaydQqzPFkJoD6gEJa+AMnrEwaeNUB4R+EPB13CBAaEFVht6N2tpuyTnE7D5QHv5K288gC2+ei5IWcp87sls/dbV6J7p3Dj3wi5qNOuoPlecMVNCbb86kOu/DcSYmfYjDUBa+nnrcoV6MMx8q3Du3y91McrQQrecfAL7q+BUZpXrwG66RGqWvOlfQ+1vS+3ox0+FdJAE4GN/6yf1QGeL/3Sk1rgQX4zClMBictvoa8rU7elbFtU5dLbpoFomHz8CAVr378SShqoqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qqTl9m15C3Wb74yfB/v9K0G1pPadizXInHmk1MFi3f4=;
 b=Y433nwbwg/K5kcwASRP6OfheQVhI2bC7ArTkjRIni6qj8Cj53LIVp8qBzxekaEcw5Xd6CQS0KIExVuHpBFxkjkM9saEdm6SavV0vwXpMegqbAFrXJSJxUlRXVBYaWlE7tWsD9MP9yDxN/SaVU0FrDliET33eIBdVUJjd6dMi+8tRPzMe5a8bNjYB/45n865IylW2NwMOa9mU5Vgjw9i97bFDbwGji1gtH7n6TQY69YmkkKDYUHgI2jHTQhKSvW8EpUMGtVOrZcBJxccVVKvaZ/rMoza4atPoyqL5uwM1H8oQhOp9X+t2PplfVLs8nHbleSH4MKSwVOTvU8kwxXIBWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB6454.namprd11.prod.outlook.com (2603:10b6:8:b8::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.28; Fri, 14 Apr 2023 17:29:15 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8%4]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 17:29:15 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 0/6] ice: lower CPU usage with GNSS
Thread-Index: AQHZbReYR74qAgPUYEur6DUNnPoK/K8q7hDQ
Date: Fri, 14 Apr 2023 17:29:15 +0000
Message-ID: <DM6PR11MB4657B72AE60739B0814B2D639B999@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-1-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM4PR11MB6454:EE_
x-ms-office365-filtering-correlation-id: 22bc058d-d04e-42c3-087d-08db3d0dc50d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199021)(38070700005)(7696005)(71200400001)(41300700001)(55016003)(86362001)(8936002)(26005)(2906002)(186003)(52536014)(33656002)(6506007)(5660300002)(76116006)(478600001)(66946007)(66446008)(64756008)(66556008)(4326008)(8676002)(9686003)(66476007)(110136005)(54906003)(82960400001)(38100700002)(122000001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22bc058d-d04e-42c3-087d-08db3d0dc50d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 17:29:15.2574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fVgirMrAPDj48O4Hy2CteqKNVQt2rypqZ0Cb0yTu8hlN9QXTizncLvn5ifaiKDqhneQEOQ8F+QPKZVilma+qGbie9hjU3qrX5cvNvZi85UA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681493372; x=1713029372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qqTl9m15C3Wb74yfB/v9K0G1pPadizXInHmk1MFi3f4=;
 b=dZgQna8RSIHIvx7YnJdypdTcNTJUYqVybQ2n76paNBm6wHHN9+2gNjvn
 aJ0HBt2p43LYEL7k5v9C8wRSSXPkwDQmiT4WTWsV0lVjf0uY82U1s65X0
 PT+Ys0AuYeqz0coOwCVpfpyJchWDd1UvOPRE+sDMjFszOLGNeWkHP2Bc+
 Ghe5Zi5ZRtOL+v//5d/NalGfnV4iQr3OUWIyHxT9CTdiLjMGHocrHHsip
 vv++JNCJslpZDE5UQc47rYAeK/JFLxLz76xK0Ue3WjJNMBZ/rrT575ahR
 Q6vJ1sMf1rFRQQfNyJhv9AmmI0eXm6rnXMAtnVWvV/2twwPbS73VvaB79
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dZgQna8R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/6] ice: lower CPU usage
 with GNSS
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Michal Schmidt <mschmidt@redhat.com>
>Sent: Wednesday, April 12, 2023 10:19 AM
>
>This series lowers the CPU usage of the ice driver when using its
>provided /dev/gnss*.
>
>v2:
> - Changed subject of patch 1. Requested by Andrew Lunn.
> - Added patch 2 to change the polling interval as recommended by Intel.
> - Added patch 3 to remove sq_cmd_timeout as suggested by Simon Horman.
>
>Michal Schmidt (6):
>  ice: do not busy-wait to read GNSS data
>  ice: increase the GNSS data polling interval to 20 ms
>  ice: remove ice_ctl_q_info::sq_cmd_timeout
>  ice: sleep, don't busy-wait, for ICE_CTL_Q_SQ_CMD_TIMEOUT
>  ice: remove unused buffer copy code in ice_sq_send_cmd_retry()
>  ice: sleep, don't busy-wait, in the SQ send retry loop
>
> drivers/net/ethernet/intel/ice/ice_common.c   | 29 +++++--------
> drivers/net/ethernet/intel/ice/ice_controlq.c | 12 +++---
> drivers/net/ethernet/intel/ice/ice_controlq.h |  3 +-
> drivers/net/ethernet/intel/ice/ice_gnss.c     | 42 +++++++++----------
> drivers/net/ethernet/intel/ice/ice_gnss.h     |  3 +-
> 5 files changed, 36 insertions(+), 53 deletions(-)
>
>--
>2.39.2

In general I couldn't find any issues with the series.
Thank you all for suggestions and your work on this.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
