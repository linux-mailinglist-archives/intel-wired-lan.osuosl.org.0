Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F464D5BA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Mar 2022 07:33:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9C9160D67;
	Fri, 11 Mar 2022 06:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id luNhPynmHv7H; Fri, 11 Mar 2022 06:33:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 884E660C2D;
	Fri, 11 Mar 2022 06:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 596661BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 06:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45D51402CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 06:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyaOr8xJP8xE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Mar 2022 06:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7047740297
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646980388; x=1678516388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7jyO68sh8pSIaLOGV1pIZBHia4ZUhb3LiYQF7z7/vhA=;
 b=BRipnNieHjZIFTev1io8ub/rXznArir6bi/CoSoE5yLf6OW7K5FNipWL
 7eyQKhxwa+zWfySFzMlL7qeGpOqFmqhXp99vDjWvHet5IGq6n4I8ys06t
 iRVjz8Kw2AONQV7QOwnNyy8MM6uUnjpF4Q6XkE5lPicFl2G2iiOZOyWI4
 dhTvUwy6IqviakDCHfgOEz1XfOKbFWZvhAmRqZ1642BbH2QTSbpSKSYkK
 SmChqTXlXfG9HiVlZBAaaMyR91bFIGkzj0/vwel+Jek323S0gk1Y7grss
 3CMdUpt1S4f5AdyEpd+kgNmirxSq2U15wlw0u2OLJ4R2VVi3S0rhb8eWn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="255702010"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="255702010"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 22:33:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="644836092"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2022 22:33:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 22:33:06 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 22:33:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 22:33:06 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 22:33:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UwmPljylc4sR1lMEnaf/gvleWkx9mzBzB87Me+U3mVu351M0mgbgcccCh6pFbtUidOSbn4dKSpbQFP9JSzEbwVcEnFZZ+RXZJSQniDPXOdGLl57ItW7g0J8bAiAJZm5rRjsLaJjmaBykVvUu9DeA+r0arVsjGozs8wTwJ1zYv137/qZ5LiVqNS1SwTX8mW2plux3H/hpqxe1+3FXF5OWgnSDghYwQDj1Sfhh34j6FgCmCcpRLtQoXDXXZVdqm6asst6FG3dvng4m+XzzDgooTassuYAvN/Ci/Ee7zLNmddituX9bIvfpxHKnBP97Cidcp3chcftXVO3SVXFO7+z9nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9luYVAAT/C5avj5JACENdoQRZqkRhHXHU3lr2H2ckHo=;
 b=ZJPJ2MvJY+CAwuXVB5UT+xN7sPQmgxErBr8DFpxuBZQCZgMCYQCA1q1vUB6EgQ3Gf5/5Pt6Exjw95bwRkFcDg7n8TedDCZQMVwEYwBLagJIGSaGPubp4dVF2h+e4tkazbXToC5dHFiH07rxMv7MIZu2tZ4rZaP0Wu2ce4Q9Vo84VleFFIdt3FsTAiRUxH1sc+Fue0UKtVlItI2CcrVz+pKtgRhAQqm6usL1AF757Mt/KbyBvhVSwYFTkOi7LfsrudSfLUSphdUKgsfgHtbt6AxPsss5yjAVmjpL51RB1/Nl0jKzsrZKIQTwnQwyZtEKBwIrwpjl+Zj7EdPoUhNgj1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3239.namprd11.prod.outlook.com (2603:10b6:a03:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Fri, 11 Mar
 2022 06:33:03 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::44af:c21:2bed:47b5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::44af:c21:2bed:47b5%6]) with mapi id 15.20.5038.023; Fri, 11 Mar 2022
 06:33:03 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: add trace events for tx timestamps
Thread-Index: AQHYLcCIJWnUkEyYhkiRCHiDq+aR/Ky5x/YA
Date: Fri, 11 Mar 2022 06:33:03 +0000
Message-ID: <BYAPR11MB33677AD6BBA0027E4F039619FC0C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220301230228.925588-1-jacob.e.keller@intel.com>
In-Reply-To: <20220301230228.925588-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f042476d-e141-4130-81c5-08da0328ff10
x-ms-traffictypediagnostic: BYAPR11MB3239:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3239309A1D51426214AD1176FC0C9@BYAPR11MB3239.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ey4rBptBXUzFMklbVZtiZLXwyZ11aBPp+LKksixOzweH9YANLg5qYA0HKxdmyCKfG8AebCkTNGqiabnmS8ULUTsi7zH+/OWgXo7SD3VSgiqfgpombw+qDXULxfv+aNwz9KFxDZiWRmi2uU7SJL7LTII/x8TGMlprOPWv1dkIsgQTiGqHUM1V94TSESBnwfzMezrg8tms+Tq4+iOAfQMWt8Q6RLVsqkp33BgdzyFeoICqgX8u+oryBswyMa54Nc8O5sXrHRrbdLxI4PT8RsH9E/NGU7RkV943P6e/ObKGybcJzCzvWSl55PMrfQIsOeEUMyPHVgDBiAP6I8OJqPnBApmlY4p2bWbormgaVO12EG3Q058eRzTX8+JEQTs2yIUdKog0SDmIBVbgdwhqk6XioY2fUG3ivBx3XD7oYE4QB6cbe1UPG6ptB+T+unVJqMRexH8dF0NKlEI+GoNZlJ0LBVHC0RGn7iM4JaCbOiVaQiZZKJCbBRYV9s2Ig7FXjqselROlDqWz5aq3+LDMG0Zvu1i1zjbXOxH7z/7XFeWLtXQYSD1tOiMjrZMpT9LdAOYWKcrNZNvYQYLd1BcFsL6fbZ+4EZt2BvRiYK//5OKd35A8lwKWQrkp3uIxeA8Sv/W1iuYszik5FZY7zrI3zc+OW1KkguRMgqaWzFGrMMmArNeg5gL3ByCRHBpEJL24bosw0g5w0gmydvmJR0/TqsvVFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(8676002)(33656002)(8936002)(4326008)(6506007)(110136005)(7696005)(9686003)(55016003)(2906002)(52536014)(86362001)(71200400001)(55236004)(53546011)(122000001)(82960400001)(508600001)(5660300002)(38070700005)(38100700002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(186003)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Da/yo5hyyzjjYct+3h/1a+AGzEhk6NI/H1DZgq3HK6HfaIzXh+PdRtyL4PzK?=
 =?us-ascii?Q?psR8q6l1eBsdSAs8lj+e1NUwyv35c+P+5cbIymDmNTe9isJTzA7+wjs6o3ds?=
 =?us-ascii?Q?EBj6icnHZrye8JJ2TFnBg6eXdGB1W/L/XW+WpQZZtFBjM5+CbUdwfNy0zTxD?=
 =?us-ascii?Q?dvDiA/ecv0eTJ1kX07567O+ZkwwFM0kO5PvLi19jGG4aEtdd+Me05rgCULGl?=
 =?us-ascii?Q?Eeq6ogP6alFJ/+8LeNFsGv5daANW/POHr8LL9Tm7dskHr24RzOP25655pyyW?=
 =?us-ascii?Q?TMX2nEql/XfYuA0ZaPa92S39tOzWxVtzMfXkf3KRSHZ3Q5d4qgbRa7bpqQ4B?=
 =?us-ascii?Q?PLeO+ST9k/1swMVmZZq3xtR1EfG0fhWKLDuP5xF3IvI89Xu1j0tWKOl0skvl?=
 =?us-ascii?Q?B3+/Pd52GrG7Uvh4GWUlM42zFdOnMqULR11zH1XE++MwQeqaDLnSJixg/kkZ?=
 =?us-ascii?Q?1FNSL8QEpswjSF8CTKt/3J6yITahR7oOLjOEFWh7kAYSeAB09DSS1baHVRdd?=
 =?us-ascii?Q?zPzzxFpJ6Da1HeynEcFkjjfmpuUCt7o1QXJXL97xGSzNO8E3yXFgEEhgWlUc?=
 =?us-ascii?Q?3gSEAeANdH9J1RRG1J9jdMPUsaNRjBM4HHcJmr5OGe6pFvmX/F9cOJb5ITII?=
 =?us-ascii?Q?FO4q0nQ4MNA5kyyxqLUGkcO5b7b5x/tpFSnHf336pxFAHb+sbT7Cm1IEraVp?=
 =?us-ascii?Q?NSTMRW0qp3boqI+7PwaniRVUizgRToUiHEOC/jFSA4MGWvW6hI/lQhlDJGwg?=
 =?us-ascii?Q?gq5N/R2iTqh879XnyZN2J6fqhuy7Juvih+xrY6rFwjILXwRlag8dvpH6R3GH?=
 =?us-ascii?Q?LogbbH2I+648Oi+u0NHDnaPnFp4qo4g1NAOxlN+7tWpf499ZrbYlT/NQvAu0?=
 =?us-ascii?Q?Sv+VFolwr5kq53+Eg/3fYL6QH6c+DpMmcEJh5WhsKoBOErVEsB5O0ixrroEy?=
 =?us-ascii?Q?oV7hi2bMMGUWcDzhuZ+I3j5rnabLj9bJZeJ10ynfxa/WP+Uj3DSYtAAgnxkx?=
 =?us-ascii?Q?UDZ/IAZF2SXOKepQ0TOr4gSBHeqNLV7f1z1THJGCbEIeOMe0LQfFgMGoI8ly?=
 =?us-ascii?Q?xvgQ5ypKJerKBtzTzBsH1Nn1t8D3nwLeeQ2RbYZmdqF3SvFiMSWXWU3JqPUz?=
 =?us-ascii?Q?3U7CwV0GOQG9K9QMKqiUDH7aIcjqOzt9Kgv1BrOYSgFTaNM2wY0bfrq7Ai4Y?=
 =?us-ascii?Q?apy/1IKJi/UtIMnobfI/4BJORxNOYx2ber5yR22m09warTZJXtSc+8zXNELJ?=
 =?us-ascii?Q?BPKt3V8T4WhB9YKH6JwCLt+Qoe4SvLjyhaNNqg49+lZCEsqDl3XhZJ7UwO7g?=
 =?us-ascii?Q?JZRBJA9SqrrvlGcG5SkBPy1a6g/2o9F11fLCIu95fG/YRVNxL9mJbeAvc8XU?=
 =?us-ascii?Q?+VnyD4GBJssBESsDnsobPPEpP151gPAEV4YXlCCK29fu6h+B78hyRVOwtUp7?=
 =?us-ascii?Q?1jsf0JdbZ4mDx4QoE3gJuRoT5tSAqWEn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f042476d-e141-4130-81c5-08da0328ff10
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2022 06:33:03.8412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZZpIO9PigY6FmkhKL+wGGuyhu7eHJG+ZF13/yf8UIqPaqJIaoLhNk6cvkTImsnz49F4WYpB2JAQb4EZ0FNNTpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3239
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: add trace events for tx
 timestamps
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
Cc: Ken Young <keyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Wednesday, March 2, 2022 4:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Ken Young <keyoung@redhat.com>
> Subject: [Intel-wired-lan] [PATCH] ice: add trace events for tx timestamps
> 
> We've previously run into many issues related to the latency of a Tx
> timestamp completion with the ice hardware. It can be difficult to determine
> the root cause of a slow Tx timestamp. To aid in this, introduce new trace
> events which capture timing data about when the driver reaches certain
> points while processing a transmit timestamp
> 
>  * ice_tx_tstamp_request: Trace when the stack initiates a new timestamp
>    request.
> 
>  * ice_tx_tstamp_fw_req: Trace when the driver begins a read of the
>    timestamp register in the work thread.
> 
>  * ice_tx_tstamp_fw_done: Trace when the driver finishes reading a
>    timestamp register in the work thread.
> 
>  * ice_tx_tstamp_complete: Trace when the driver submits the skb back to
>    the stack with a completed Tx timestamp.
> 
> These trace events can be enabled using the standard trace event subsystem
> exposed by the ice driver. If they are disabled, they become no-ops with no
> run time cost.
> 
> The following is a simple GNU AWK script which can highlight one potential
> way to use the trace events to capture latency data from the trace buffer
> about how long the driver takes to process a timestamp:
> 
> -----
>   BEGIN {
>       PREC=256
>   }
> 
>   # Detect requests
>   /tx_tstamp_request/ {
>       time=strtonum($4)
>       skb=$7
> 
>       # Store the time of request for this skb
>       requests[skb] = time
>       printf("skb %s: idx %d at %.6f\n", skb, idx, time)
>   }
> 
>   # Detect completions
>   /tx_tstamp_complete/ {
>       time=strtonum($4)
>       skb=$7
>       idx=$9
> 
>       if (skb in requests) {
>           latency = (time - requests[skb]) * 1000
>           printf("skb %s: %.3f to complete\n", skb, latency)
>           if (latency > 4) {
>               printf(">>> HIGH LATENCY <<<\n")
>           }
>           printf("\n")
>       } else {
>           printf("!!! skb %s (idx %d) at %.6f\n", skb, idx, time)
>       }
>   }
> -----
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c   |  8 ++++++++
>  drivers/net/ethernet/intel/ice/ice_trace.h | 24 ++++++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 


Tested-by: Gurucharan  <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
