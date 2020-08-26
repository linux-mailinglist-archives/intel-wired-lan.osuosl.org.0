Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DA3253A35
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 00:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88E452291C;
	Wed, 26 Aug 2020 22:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VoeEfXwXMhCO; Wed, 26 Aug 2020 22:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 44A7A22D24;
	Wed, 26 Aug 2020 22:19:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19EFD1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 152A987D1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32aOyeh1mnG0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 22:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A5BA86055
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:19:41 +0000 (UTC)
IronPort-SDR: uiItdZRFjoLRe60djDCU8z5+8h1QWuJOn0EnbtRfP2MfAkPFeSxIVwwiKWNeKpXXgtU0ob8lr4
 MKrTPZI+heUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="136458009"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="136458009"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:19:40 -0700
IronPort-SDR: anvAonby+Cavk9pjoEL9PJ4212YaeSHjD4d0Jn4Dbf4y/CMIRDUP7vGzwjo/er05NG4FNc8KPK
 B5tLL2awtYtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="323363619"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2020 15:19:40 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 15:18:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 15:18:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 26 Aug 2020 15:18:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgsIV13JLoP6r33SWI0CtCGGqCMH6+///QQ241KFjzVSmhRAyXeErSPziZFj0JG8wIhdnaatnfqgHhWFjdMjQ42msOnAPX0oXP1HtL/z9ROVEDft9azWDr+ZNInGWJHNe5E1ncgPXOWwvlTTVlfjwPKEd5eRBx9yJAaMFE6vFbFuvz7Ik+ZtqDpdHqiQNviiOYsFbuHsU0aFXRiNgfXMOzy6Lx30gvPvoAUosoDC72hAncX2fWUKZ7QfKuiPHPBBDdGlmnaAgdPCjpBBl7aohDQDXmQCcDm0gq6z7EJ5BIqAgK1yLSNvsMqn/o46oW9eaqWNFME+RgKksaMEdYNeww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D8xnHd77Q7CsKMNh2TvxA1Usc+QPDhJrkBb5+P0f7BM=;
 b=FhrcvtEo7ZaT+BaMxtE2/mwuWxdCcJbQXnjVpHkEXWeVX23P6UzXLUnCcQFLqqdzQc/Rkpj7StXZsQZLCW65XW4rik0MmryvwnhoyclWgukA37HNQ4QNYiUS4cqOZJ2Y+XS/1dV3zgHht6OUYgiScO1iHCAO4QkTyz5oZ+kdAqydwKvXpW8IFvxJJA3K+u9nksL1ASaSJJSMojO9/p2aWrPTGAQe9VZNsaLIPXg7w1FY0gfCZYSnfgnPjG+Kwt6iuvCp6dJPctXjYEXX16bdsn1k4Wc6UHOu2LDULyE82lGkDCW8H1y5pVxm92e8sOu9HAh9N1ePiXy/l97quu88Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D8xnHd77Q7CsKMNh2TvxA1Usc+QPDhJrkBb5+P0f7BM=;
 b=QYMECu4hRVWfjrUYhMh3PzDM8v59e0YtCMHUtDRRfLP8v1UKsQPXgVb6aA1FtLgmhAshEysXhslaRDMVJMTkTXQxxO+Vt5t/qMyfe3Xi5NM+FPVFEASWKNmYtX6lLKDycoPyCELnrlLADzwvFgTKDTGw0Y6vx+Yb4ZDAWR/G6qg=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3658.namprd11.prod.outlook.com (2603:10b6:5:142::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.26; Wed, 26 Aug 2020 22:18:37 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 22:18:37 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Save PTP time
 before a reset
Thread-Index: AQHWd0Yro46FSxOudk+BNqKIil2j/6lK/ujA
Date: Wed, 26 Aug 2020 22:18:37 +0000
Message-ID: <DM6PR11MB289070D70BFAB75573FAFF8CBC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200820230217.2005122-1-vinicius.gomes@intel.com>
 <20200820230217.2005122-2-vinicius.gomes@intel.com>
In-Reply-To: <20200820230217.2005122-2-vinicius.gomes@intel.com>
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
x-ms-office365-filtering-correlation-id: 650490d4-68c1-4b6b-f364-08d84a0dfa9c
x-ms-traffictypediagnostic: DM6PR11MB3658:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3658E31E3FBC0EF6487C1D9FBC540@DM6PR11MB3658.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i+iVaYh/PYTzc0BCFEmeHcqzuYzcTMt0PHWcuqt/zxwsGZHRMFaV+Jp2CHj/dhcHw1DLSz3G00xTznxw2a8Qokhe9chiejPTuyqV8wbQOshiOP61hwtzBtsBX9+jyxlnH1A4DVzckJ/cdxvxfLgumgosKUvDypHD+hmOOBS+MRV4l2m+2VooMjMsczyf3bn8/SeGplpi+3DssVp7YgaYvGjW9BJP5BRuwHBYe1hvoX4vBxJC5vOdz3RvI/fTApNMS3f5QiEGQYvOcNEJrNXrJQpR0PPFmBjk4LigCAP2cUGVzXcaK2h+5sKbfsq7CpWd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(376002)(346002)(396003)(86362001)(2906002)(4326008)(110136005)(9686003)(26005)(52536014)(8936002)(55016002)(8676002)(33656002)(71200400001)(5660300002)(7696005)(53546011)(6506007)(66946007)(66476007)(66446008)(66556008)(64756008)(107886003)(83380400001)(186003)(316002)(76116006)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jDw0XKBJQzpWTD135OaiDAOognOlyTt0TNPLr2geJbH0xJMwUiH8CgtdVoY+9fU48qfdOQSrHteyX9OLodJWx0eGTFz44HnyzscTGj0H6+majkiIDvEgJHwH0LGAGMgzUPs8y2kDyLtRlCeLQFstK/6n+VvsHk+4XBpG8ncoORFckBr+Te/zJMkLeT8sVzZyaTGUbvCNdjrtlqfLfughidq+SMtoiwnELOjfQ8oAyIau4DVKJRSmE3n54kOd7YWlpqwGQojEiqztnubl2KUqbdrW5401HNuypvYy/y7hLuFqAeklDtpA9t4PxMZ9YC9tzVfj+qUA8dQsmfbXAqVL8dP7TukKoKX1xWydQHnsvTcfoCJdABXdz3ehFR0SOj4s7cdVy73zRWlg3G0ZC5roUNlE2W/eNHrNeHDMV9Njv/UXaJ48Cxn3q+ItgDhxtsOAVhKWKlWGQSMAMdmb71QvvE2HIjpVyQRsmB86A1hVw4d7xN31lEii/9LsBVFUtQxmKzRMOkLLpym0/tUy7KbRfCU/xybGvUgTu2tLxiRDe/6NavRSDOr8BlFeAjP1stEMQpF8sEGa3AY135BrBvtVaIEZuywmjxhXVgAQMCKa8CsfiG36iX9MoVt4MiRYv2ZCOvFmVS/am+abL6ilRty3Hg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650490d4-68c1-4b6b-f364-08d84a0dfa9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 22:18:37.1685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ip45HcIqEWJDd3lrxuTpH/EupTcQkcjKsILM1aiwgpZA1673zX3w106AW2NhOAtb52eiKvmPtsxAi+3FsD+fAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3658
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Save PTP time
 before a reset
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
> Sent: Thursday, August 20, 2020 4:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Save PTP time before a
> reset
> 
> Many TSN features depend on the internal PTP clock, so the internal
> PTP jumping when the adapter is reset can cause problems, usually in
> the form of "TX Hangs" warnings in the driver.
> 
> The solution is to save the PTP time before a reset and restore it
> after the reset is done. The value of the PTP time is saved before a
> reset and we use the difference from CLOCK_MONOTONIC from reset time
> to now, to correct what's going to be the new PTP time.
> 
> This is heavily inspired by commit bf4bf09 ("i40e: save PTP
> time before a device reset").
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  2 ++
>  drivers/net/ethernet/intel/igc/igc_main.c |  2 ++
>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 28 ++++++++++++++++++++---
>  3 files changed, 29 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index 522699b870c9..ad9e2ef80043 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -219,6 +219,8 @@ struct igc_adapter {
>  	spinlock_t tmreg_lock;
>  	struct cyclecounter cc;
>  	struct timecounter tc;
> +	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
> +	ktime_t ptp_reset_start; /* Reset time in clock mono */
>  };
> 
>  void igc_up(struct igc_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 933e0d3445df..e685a1c3269f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -3788,6 +3788,8 @@ void igc_down(struct igc_adapter *adapter)
> 
>  	set_bit(__IGC_DOWN, &adapter->state);
> 
> +	igc_ptp_suspend(adapter);
> +
>  	/* disable receives in the hardware */
>  	rctl = rd32(IGC_RCTL);
>  	wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
