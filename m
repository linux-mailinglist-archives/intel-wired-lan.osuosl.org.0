Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 589EA1DF03F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:56:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3AB6A25C36;
	Fri, 22 May 2020 19:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DkjhlYfMvdCc; Fri, 22 May 2020 19:56:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8791F24A5C;
	Fri, 22 May 2020 19:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 411841BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3C38F87D8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5uly2CPFqr6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:56:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 000A487D1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:56:31 +0000 (UTC)
IronPort-SDR: ZE8aEzdzT8C4ZZy7T5rMWQx5N1pu/7c6L813vpgFx/yf1BD/hCyAQeoIqw0b+dsJxg8drk2PeH
 8rPl1MDWXwMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:56:31 -0700
IronPort-SDR: PjDwWz6QNAqgvr2+xNlwtzq4TPG+CWrIRiEjR14hs3qaV1Rm9XwdFdmPzEmoQIDQya35Df+61Y
 oHeSTUd5eREQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="283502155"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2020 12:56:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:56:30 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 May 2020 12:56:30 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 May 2020 12:56:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:56:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D59Y/nMOWjA4go4tww+VVne4IOP2o4KedrzwYZPDUUVUQYmVOMp/0ESdH6+04m68fJBE5Js6KkThBaMOS0nUze2VG2kv+dNR3acPbRY76yHx62jlM7OicZHF0kMh7cMnDVtAUQpMHflhkBG3csJRZHDvOmpoCHkMXIO8nHwQREBV9YdEg+A0oGQMO+DbzCdl6smEcXo3rN0dFO+v6Z1YXKiRcn33Y4u89NmfmentUe6nfucpp8KL+1RqIWJBKwACQnE5GDO8G99mc/fBkHdWJpI27rP51MiLUqfxxjFBX2axq1z6Cmd/NjCbmnjQL5HgncrgVhaLvkN++CJ/sD3aTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xm4pLSTKgIoVL3uiwDHUWRwqPGXecQUT5vSLI9hiY8k=;
 b=oMeMVo8rK4Zd+jR/GYu4Awl0AqC8AeWDa28lCTnipRFjBERM0vdcaik3ked+F4mAj2LNR+3O/b2B2Nl++VMSLoG+K2nVXnMvhpwVMGDyWfuYEI49f8cqh8GCtin6tAUVZ4KE4BPJYslPHBIKH7loAFcQYwlrUyWm2vVqQHVcLeoS2gna5L3sUW/Wc/210c/wvrpPBP3w1SQnZZihOs15MbYmbwBnmEJK0ALbdWQMO4DP9oQwfIdfRu8eG8C3QjOCHcjidsWrbOjdmrIAWUW8ZmNzGqgAzG3S5ZZ2GF5p/B2toSIo/SavdnOVt3bg4Rpyb7LlYMibNxBcnypcXFhDaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xm4pLSTKgIoVL3uiwDHUWRwqPGXecQUT5vSLI9hiY8k=;
 b=jxtX5TX5liiV3GPgVDR77z5rb8DzrnVpqHVV3sdfRitHXOWgXMk5cSHcFVFC9POF7OOnKDD+yoZUvWIKJg1Y8gsbQeCB6iOvFgTl/72aaWy4IOZVPcsEhc1QAIeovrCyHGtE211GTIwlqZQ5RRuWwEfl8IZPsBW9byD4y6YXkJY=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1577.namprd11.prod.outlook.com (2603:10b6:4:a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Fri, 22 May 2020 19:56:28 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:56:28 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 06/15] ice: Fix bad register reads
Thread-Index: AQHWKxqGpxIrU/9oukakPI69gRmL46i0j9bw
Date: Fri, 22 May 2020 19:56:28 +0000
Message-ID: <DM5PR11MB1659E398D02690F2AD96A3A38CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35297f75-37eb-4013-0b63-08d7fe8a379e
x-ms-traffictypediagnostic: DM5PR11MB1577:
x-microsoft-antispam-prvs: <DM5PR11MB1577C0040C0D494EB258CA018CB40@DM5PR11MB1577.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zWq+RpZCVVkZpx15o70zzX0cGwICY5uR6d4s1XxEcvWBZX9aFa+71bFd3es8wnrl1S0jkQ2Ts5JJYiHDi4A1OcGpWZ3rA5twdiWRTOrzsyssUoUyM1H11vDC9bmQRVpbklev+6D1uYwQxoPk1hiDcMfgOstUFUxqnmW+kpMusGMK0s8nOIt87LjYeG4zuw63wKm6ST0MsOP4nA+OP6eDYqRXWAVJnlhIzEvT4Pnuq6yD/Est79QvynYQdX5d8pGqUBGPHII2IZCPcjd2uY6tI7w7XnzDe6Ey6buY3X/SflDbJIVxv4P84rIl8CMFonhbvtqNYYp4Tqpdkf/Szh3N0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(396003)(376002)(39860400002)(136003)(186003)(6506007)(9686003)(2906002)(5660300002)(33656002)(52536014)(478600001)(316002)(26005)(53546011)(6916009)(8936002)(66446008)(66476007)(64756008)(66556008)(66946007)(76116006)(7696005)(4744005)(55016002)(8676002)(86362001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: i8clut400BsfUlxkb5cLACacn94Zqm4kWVojZdwlG5hGL/KYcJQFkP2gThRBgtyQKXDzuPPYQg1s50mCGdZpyICIDhbSCgWrZzrdstBSWSP+CT68pbZbws6cK9VzkcqrHnxPeaXZ1NY28MiaK67snAAVKcr4xD52+FwugpTngzaqbLI7R1u5CB6rPr/OGsntUC+1t8XzhThck63Biy7U/pVPISwvLMR2qYEVCY0oEWxMML6L0bVOpPdaE27tGTIuG0rh6zpQPXooyAjWin6C+hcuGJ53YFl/x1eSZCr7rNmluBkpBbtRc2vySc8AnEK7M0SqGmWqCjPchtczGf9pcJc78krHcAhmMFB79pHlKlId0EZujrmrYOYw7MQOEzWCeHa9WYO8a3aEAre12DoKSA9UCUKRpYf/tvKE7KKoKdBisJ+nw8j6uHFghMitS/G1gMajzWBcT2/8AOPUW9X2nvi6CnHdJEA4w4gqGE1mQLI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 35297f75-37eb-4013-0b63-08d7fe8a379e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:56:28.6781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XK0vygbF90ouNLz/Iy7ryK6WAE6YRPKBLyhI8WiDRtJOHXwuNalvNDgqeb+eU3kz2qUW3F6P9wtD8nrnMzvgOq/VlDqKDV4Mh4zunF+zQ7Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 06/15] ice: Fix bad register reads
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 06/15] ice: Fix bad register reads
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The "ethtool -d" handler reads registers in the ice_regs_dump_list array and
> returns read values back to the userspace.
> 
> The register offsets PFINT0_ITR* are not valid as per the specification and
> reading these causes a "unable to handle kernel paging request" bug in the
> driver. Remove these registers from ice_regs_dump_list.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c    | 3 ---
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h | 3 ---
>  2 files changed, 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
