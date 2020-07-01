Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70B211175
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 19:02:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 806AA2FC73;
	Wed,  1 Jul 2020 17:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hcg+nTosnbu; Wed,  1 Jul 2020 17:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF0802663D;
	Wed,  1 Jul 2020 17:02:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B58BF1BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 17:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD50A87835
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 17:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSKMOMxpNu7n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 17:02:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1324F86A29
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 17:02:15 +0000 (UTC)
IronPort-SDR: 1A8spByArINonvS9La0xJ1HpqcmkXiuCxFp9jzEu0Uv5IOr4JaiHzX6GQGo8IEKjMi1XbRuAXm
 WwMe2VkOHMDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="144162216"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="144162216"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 10:02:13 -0700
IronPort-SDR: P/gUF/WjPLOVm0OEYaRJFRF8O/Ul87zuKf7V4AFAHbg2jYy528znqX2hTwSgy0b99CWgcB8yjC
 KiwJdO/7/5ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="481666006"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jul 2020 10:02:13 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 10:02:13 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 10:01:40 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 10:01:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 10:01:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AhVus4vaSuC25gWn02aHNEMSA+kYbtj2UiI8Gl6XA62MHesFMF/VEWqdrOH6Z8K/pr1xQMtSZGC530SQN3fLJYVqxbaEqrt0Bw5nTTMp5f/CS/gIubXQaupBa/xlesSVM8dLbiU1ksCShMImEcwq2JrpUAEpWSGdqFOeuIlWAiMBNghMA+q/DBU8MHK5lv7Jc4hM/k02/aNgonPBt/2IItR/PUI5AyAre3PQcGcHd/fDZUd/agm7uGmNkIFeuZ0w0XX3bVx0fhEdSp6N0JJt7AVKyJZy2IBmE0k9vyHWDBPZIOU0q+/G/dl88KJHsMG8ZOlL1skpkX5zCqXnzU7f6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DkEAiHeLJlbY5klKeL2dvR2MSxTlw+/jstegdvdt7jE=;
 b=ImYiyfDk4s+RMjRp4dEjT2VyV6dKMxlDPLJGyyYecjkDY9ntA1nt7fbskViytGs11wo935cGIqT3CK2dmL3HTg07jkn+GnobfZeCW94cNmLZMvtCLIXsA+/UyUKNm9jwuwZpBMVk1q3DaiOISf/LPtrT/NKBKX781+WjHNqVOuCc9VLaoFMVE6gOwtC3U8h8nqooQgzPM6bpHgIfULa6GUfY3H1KbUJR57cUOOnlhDlxBzMN3obxpvPK3Fr4MWW/P/zX8vlCUpz6JYkwfdqePDJnXee4KAQxBP/1L+ZmS/0k8pkRmGJMZevmNqfpNhNXRuu0DuOWwso2RJ0kNv/qmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DkEAiHeLJlbY5klKeL2dvR2MSxTlw+/jstegdvdt7jE=;
 b=NM4i/SDL4XZtjhyyLDAqIKxiS5PjXiy0SffnGiJCnD0Z7ikLnCMSBkAFIpqYA+J1KEv2GPmLXtuWJwB+gxS8j9pisAzRHwSegjFB6a12g8EOfGIxLdqyvMv3OBvHETx5pmhFA5J+79awXfNEF43MQPwxYavdBEPBEiNE1VihROI=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3698.namprd11.prod.outlook.com
 (2603:10b6:408:8a::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Wed, 1 Jul
 2020 17:01:38 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 17:01:38 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 4/5] ixgbevf: use generic power
 management
Thread-Index: AQHWTfgoV7BQ5dw9h02yqMo36TI3eqjy9mvg
Date: Wed, 1 Jul 2020 17:01:38 +0000
Message-ID: <BN6PR1101MB2145E60BA3521C44510791B68C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
 <20200629092943.227910-5-vaibhavgupta40@gmail.com>
In-Reply-To: <20200629092943.227910-5-vaibhavgupta40@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8790c588-59ca-4ab8-4fc6-08d81de06ba4
x-ms-traffictypediagnostic: BN8PR11MB3698:
x-microsoft-antispam-prvs: <BN8PR11MB3698F94BE45BBB9F22B1EC708C6C0@BN8PR11MB3698.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9yyanhEKvgthTP7ax5kmjTM8sD5+RSMIElr3in5vMbNnVvscrEhsCuYIgJB7aBGca3m8tq42kZ0x0aMAZhZhd93nKS5JQPMznmHBNJyzXIihPA2EEmJ3MDmwFYj+nSKVy0LAfZwDmTD9dPUWlK8AAyfABJV/+b1ORbBYmSFiK6l2498R3iADcdZIDRgpZOPsWxNIFZLrAlXN9gle7TIErJgWw9UrizzgrwyyI1FwwGdvfOCjY3y+drE6REUlOze1omeBQifCqbYPofmojGjNE/7vss3hM5Cod/8kQeEs1vi2FrPBjSgmPws2NYpH4EBkccgqQ/mzhMTLj174q+rD+ciOlG0j9iSYbifX9ZZE5KRvqahH9dYQgnu4vinQb6tY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(8936002)(6506007)(26005)(5660300002)(186003)(110136005)(64756008)(83380400001)(66476007)(71200400001)(7696005)(66556008)(76116006)(66446008)(53546011)(66946007)(55016002)(2906002)(33656002)(9686003)(8676002)(52536014)(86362001)(498600001)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: b+ANWuJztmPmG2/hyCePSVx8ytEgCXgHa1iA+5enMrXAEyhlUpqe6rqMgiMiuDJ2xTaOUqageSOUrmutFJlh9g41YMs+xEdLO85on4SK63Gjp5UIk0vhBXl/rYmAMGSE5sgGsp7iQCXk+eUlSY5B8ykLk0NWMsiJyRE3tysZsHi9MFAkmYih0Hoo56A+2bLOwifuCwq9FurqX69vnxvbhMLsdKZ7Nb2Hvjl9b8utVY2do7DUKHzDcrrVecM1pVaZDsRsJbit5aIvIMbhpp93upQT4rSlPmuogRjIJDF6dwb8f/gLYfFFdnnhGV12LE+QgW3BFnkEUhs9ZGrQlWIPbe6NIgFnwvxWCaXfNPbUA6JAHM4C5mfOUt9OV4MAoLc5Y9AmNyEs+XMKF4EPE996wYNuffkhYrToLkjVeLi9seivaIK6enG6Zb8xXIQ/RDVMeAjQxlghjOuv8m8YXzrkSEgMfjQcfbqP0BqRCYT+Wv4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8790c588-59ca-4ab8-4fc6-08d81de06ba4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 17:01:38.7196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jhkyJ+l/6Vw5u71/AL1NCO3x+6SJsUX5eViDcLUDj8dZBg7ClbpLlqbL7qXf4gxnnGKc6PKQ/Q5bTTaWmR8KtSUVrKgO+C5IF27+t1hhWv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3698
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 4/5] ixgbevf: use generic power
 management
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
> Vaibhav Gupta
> Sent: Monday, June 29, 2020 2:30 AM
> To: Bjorn Helgaas <helgaas@kernel.org>; Bjorn Helgaas
> <bhelgaas@google.com>; bjorn@helgaas.com; Vaibhav Gupta
> <vaibhav.varodek@gmail.com>; David S. Miller <davem@davemloft.net>;
> Jakub Kicinski <kuba@kernel.org>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Cc: Vaibhav Gupta <vaibhavgupta40@gmail.com>; netdev@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> skhan@linuxfoundation.org; linux-kernel-
> mentees@lists.linuxfoundation.org
> Subject: [Intel-wired-lan] [PATCH v1 4/5] ixgbevf: use generic power
> management
> 
> With legacy PM, drivers themselves were responsible for managing the
> device's power states and takes care of register states.
> 
> After upgrading to the generic structure, PCI core will take care of required
> tasks and drivers should do only device-specific operations.
> 
> The driver was invoking PCI helper functions like pci_save/restore_state(),
> and pci_enable/disable_device(), which is not recommended.
> 
> Compile-tested only.
> 
> Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
> ---
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 44 +++++--------------
>  1 file changed, 10 insertions(+), 34 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
