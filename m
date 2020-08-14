Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 057482443E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 05:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A135870E5;
	Fri, 14 Aug 2020 03:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FzpfzaWZ5jL8; Fri, 14 Aug 2020 03:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74EB8870E0;
	Fri, 14 Aug 2020 03:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0CC61BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B769887C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yyvz6qQi7x4X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 03:09:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC468887BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:09:50 +0000 (UTC)
IronPort-SDR: DC0YqqFWmRQuCyk26rpVr4zRKBH0NpmLZrRtKDkgmsk5JT3feuu8SPImvO73+u3O24BXtYyXwp
 7J4Od1+EMeKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="154315629"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="154315629"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 20:09:50 -0700
IronPort-SDR: AxtwMsRAeyh5TTLXJdhX6BVovJuNUR+i519jQmrit0vHfQbqYCbmUipnPOJTUhtkAz/BL5A2K+
 JFd8/9s3KCRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="399359091"
Received: from orsmsx605-2.jf.intel.com (HELO ORSMSX605.amr.corp.intel.com)
 ([10.22.229.85])
 by fmsmga001.fm.intel.com with ESMTP; 13 Aug 2020 20:09:50 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 20:09:49 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 20:09:49 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX112.amr.corp.intel.com (10.22.240.13) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 20:09:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 20:09:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XEj2xz+zA+caqPkeT9tsjPtuDZtoFL2TtTpfVTJRM067cDOLiNicbMSVonVKAc52DOswwGRmlMXFH28QUvlNQISvi524wdmJggp/pSUzsc4Or65zBHizhRa0s5dV1yj3r6QZexWdNgmhK6FpZIPkf+DhVdBKQCHuy/YYlUzO2Jk7XqQn4xNdhzw3EOgCApowyZtrWIx7kNTfruVEgqwb92ABYvw6jhU1T0QK5ZAKnnhNsEnux1WjzkBDeJmOJm65X+qn/O9XnyanoNcvb3kya5P/W9wV8xgT9hPIwzMCmkRnQKQ+y/hkqNOPVgUH8FBIKoOyoBJBVcxJ+ejhEMg0Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftkxbrP3+fYx9Sq8sXKqY6DtmpgYm3/QTzexMl6PsuY=;
 b=BGSl6gMLOHKBJIQ6t9wF3hsHIx0FHaL2YdxJYvhxmnmpaXJaDBkj10JgtJDroHkxEQ8i6f7fb5sZXj4arrB9eyVp1jdvcTXd5k0f2vpGUjnF1vrjoc+cbc0F9Mcnr2TOHVLQKD4lUyJXvRRXg0ncjvJQc5OnwTPZmAeH1rz7u0vJHJ9HEictpNTbx/4U5xL+SGiEFqsY4dOQcVXxW+90GD2CqdU/keoEe/afTBnLPeIP9U+Ul8L2RzvZtTrIKlZ/V7uTJHXvbpiWKBygCrl2fizcfZZH5Fns9A1F87utDevtuShG+hnz96jL5WpBEtU6qfDcv+ZLGPCeCETDabv9/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftkxbrP3+fYx9Sq8sXKqY6DtmpgYm3/QTzexMl6PsuY=;
 b=Sre24j/Sut2D4oT8wa/EQovZmgCYfKSRLOxTcdfOJ/ba7cvTg/ZW80nyADl3S6XHDYYDATpXXF+PcP6GI4QlotdaurrA2bDkMIQoAY1H+opdkIgHLJlumQtBkFZz8hbYrF1XvkDkm6CnPiXmprVB//OquFpvFXbDG7oJC2hMgVE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1689.namprd11.prod.outlook.com (2603:10b6:3:14::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.20; Fri, 14 Aug 2020 03:09:42 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 03:09:42 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx
 code
Thread-Index: AQHWZTg1JP/Lv9GysESOV9Vy6cB736k3BiQg
Date: Fri, 14 Aug 2020 03:09:42 +0000
Message-ID: <DM6PR11MB2890FFB4041BB4F13D0326A3BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
 <20200728233754.65747-5-andre.guedes@intel.com>
In-Reply-To: <20200728233754.65747-5-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19647a37-9fa9-48b5-a193-08d83fff7d2e
x-ms-traffictypediagnostic: DM5PR11MB1689:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1689DB1E5E236CBE632E45EABC400@DM5PR11MB1689.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pfHfyRj77cmue1jerGg0VI7oNTPtfUjEtvxxiXp05pY5ipTjUy4JO+n9ldIvIVExDQAnOyBz1svvW6/Dev2OzQd8rODKBb1SmOZhEHUKfX+0nEIwpVVEKPeBosjqSXZXtmM3fooMWyZPYqXDaMNA5mjPctQgXHYxrEj2dKl+Ox/Ji8NocwY8tHrZDGAS7bGEREAsGKtImOo1QaMC55l4hCem6RO9vHowAfOGdCyjffhLkjLXA51LFFoVhW13iZ51M/rjKmtFeZwDSSvOSUNbaXU/KwayMeNEQnmtD1qp2GpzARcJAwVyTRv1o5pWjkNf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(66946007)(76116006)(66446008)(64756008)(66476007)(66556008)(55016002)(33656002)(110136005)(52536014)(5660300002)(2906002)(6506007)(53546011)(316002)(8676002)(8936002)(71200400001)(7696005)(9686003)(26005)(478600001)(86362001)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jPnQS4Uh9iyXXO93LIgfAVLlpYuoPi+kvDUlG5VfIU3wea3x0M9Qlz71HS+YFFWdfVr+2fcZVMEJuDB8zL4QiJoZi2Hw70om+E1OBxFgID7kdgsjqJ57MuqUBqLb936N23ClvDM92XO3zB9pIgWwGT+kRCKWp8SZmicj/IQmBTb7QNzqbWhuitFHxrDO2OS9pXslrCj2V2Dc29Vj/op3kVu3kc4Lisa7UdoobHWaxzBqxEymyabNcucZp/no/5efAEq27O8EMKyh6UQLo0G8lhNBvx/VaLWog+hUBvohhOcQHzw9c6MiIlRZ3+Eah7wUYIPn0Fu+Iy07QUXQX854uzdx8EgQyhmWHJKJ7siCcCikxBhr2wFC6De+77gQVSDqi6FcT1bXO+wrvlgeUIlZYRXOOLYLWo81xaLH7wusX8PR5vLnGM7dMnAiiXJA1jNd7md6jFj+NOCKrzTSh8Ho79sJZkJQkcNlG1mReN+NJNs/bz+vKOJI/YyeFLWQjdHhvdyF7UZhj6FtcZV+1bcVjeJLQkMr58HZL0k6dTA11AK8IZW1YhhG57QbsX0awaxMs8YSQ1DnqR6UuiapgAb9klNPlH2RBR7qyYiM7aotZ7RKampl36RDsSA4u+hETKwI9R3HMTYQWnO5SVK24HQHyg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19647a37-9fa9-48b5-a193-08d83fff7d2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 03:09:42.1494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mD0pFURVY6vaiCbDvGNk+eIVFucnjSj+vu3aYiMC8ZS6+rL3/iGExU4ZY2oLyUugVu7g2LHCHdr89ncPrDMEPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1689
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx
 code
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
> Andre Guedes
> Sent: Tuesday, July 28, 2020 4:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx code
> 
> Currently, the igc driver supports timestamping only one tx packet at a
> time. During the transmission flow, the skb that requires hardware
> timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
> timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
> scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
> adapter->ptp_tx_skb, and notify the network stack.
> 
> While the thread executing the transmission flow (the user process
> running in kernel mode) and the thread executing ptp_tx_work don't
> access adapter->ptp_tx_skb concurrently, there are two other places
> where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
> igc_ptp_suspend().
> 
> igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
> thread which runs periodically so it is possible we have two threads
> accessing ptp_tx_skb at the same time. Consider the following scenario:
> right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
> igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
> written yet, this is considered a timeout and adapter->ptp_tx_skb is
> cleaned up.
> 
> This patch fixes the issue described above by adding the ptp_tx_lock to
> protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
> Since igc_xmit_frame_ring() called in atomic context by the networking
> stack, ptp_tx_lock is defined as a spinlock.
> 
> With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
> flag doesn't provide much of a use anymore so this patch gets rid of it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  5 ++-
>  drivers/net/ethernet/intel/igc/igc_main.c |  7 +++-
>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 49 ++++++++++++++---------
>  3 files changed, 40 insertions(+), 21 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
