Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C802E1FFA04
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 19:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 76B76265E8;
	Thu, 18 Jun 2020 17:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id onA-+5dpOzXD; Thu, 18 Jun 2020 17:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8BDD4263FC;
	Thu, 18 Jun 2020 17:19:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0901BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54A31260CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3j6taQVbLcUJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 17:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 238F922C44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:00 +0000 (UTC)
IronPort-SDR: gWsI+N728XRakAVSUc0yAmMDf9Dusn8pSEF2JQuYJRjvpZEfWXvcwTTsEOqeDGed0mt7rRsFPD
 MNl3WljMPqsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="122887745"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="122887745"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 10:18:48 -0700
IronPort-SDR: dyacG7j62Dre81t3OvaMipv2VDGqdxqyIdpd7jKB1JcBi0nfhfQCPFbP9mfu2OgfoOqXDg21EH
 3x/qhF0FwT4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="450713703"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 18 Jun 2020 10:18:48 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:18:48 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:18:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 18 Jun 2020 10:18:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OzTne2rnwQbr0WT5T+ypIup/c0Dc1VqmLfxnNN9TOEbS+NEiJIoXPYAcGQOD8Dw5NtGXHHTDEMHuMdfVUPmB/SvCUadub+dAM8ZSZ+YmFqUNDZQEkIpQUrUkuXGyr9RcAplVuiMX7/AT+YRTXPikQlwTdXJh2Zn0vxYS6mr1btowHuwP4BvoIcjlXOm+MqYWlD9p7KlblndfFGh+N8oCmnMOyLRAygY4WP+Y4pZ6i982PaDBS9KbZuTswgA0Pf95o+VNtuz/T5xwUlUv225cUlYAPoNXVSn68xBzdIlX10QtXmIinfdFAdtH+wKc0iLQIW34nr4acFuV2n6NL/RbSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ORHlAvyREsOHhJNlkwGAtRycrurl65Uh4sPJzRZ4mQU=;
 b=iqWewWcxi6LfU1bA3cVkeUFDJ44E+PNHK4ONC/gooIqAAm1JrZ2H9bt2/x/oKy973ZfDdkHghYo5cHqqnoBqrb6kbw9mdfAjLfU+RCt79X0V8uIVPLdhqc1ebs+M3Nhsg0g2JpGY+8sHbpV58VDnk80h3u6j1iyWChVNDDAphuH8zUkav+O7EaMrhfNf845naR0uBsIg16WabbDOpU3upTMwMfn1sZAwan39pMljC2wmzMk1tRevnW+YN17LaT8vKwmmKBQYgvPGZWbCmqt2MEQw4+LMS37GjyT4T9rMnqN0le/EKmEWoy0+EN9cQZxHwYIfbNk79EXPMTwxk6cTTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ORHlAvyREsOHhJNlkwGAtRycrurl65Uh4sPJzRZ4mQU=;
 b=gcg3r2tmn6d5HLP2mmeAENA1EMaHd+yuu4ma3wV0jop4ZZPDm1qjhc07N0cIReHkirimBDiw+tK7/nxDEXVvi25L+AAuZBcIRVdfedzq+LXn0EG6noNZR0cym6T3lcWWae75y4zllqEdytONeVTMh116ZAqz0mllAI51QF51FKE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Thu, 18 Jun 2020 17:18:46 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 17:18:46 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/6] igc: Check
 __IGC_PTP_TX_IN_PROGRESS instead of ptp_tx_skb
Thread-Index: AQHWOgNfSsI2+RcaQUyA/2gVRc96NajetO7w
Date: Thu, 18 Jun 2020 17:18:46 +0000
Message-ID: <DM6PR11MB2890D59061828D04910CCC5ABC9B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
 <20200604000105.15059-4-andre.guedes@intel.com>
In-Reply-To: <20200604000105.15059-4-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 773a5c3e-35a7-411b-44f8-08d813aba8fc
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1259A7C4A9638042F8636189BC9B0@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0mLnLSjBmDdRu+uLnPALg9nYgosZRfXyFoG10FTAqcDzP4COAAyq0qSEBuC16BiYRXsaNAZomilMNAUKb30kq8Ft45WW8er0XHKZDxljW4pLrdAIMoeRKjpR/U46gb8kZhanKaSdLQ/bYxiHUVMmIMS9uQh5gg51umW3GexPnQW34OLg6hYQKnwUfedO298wmJ5GcUKARN2co0eylbAtK7URiOh4u5FfXVSy91p4z7TuMX+IJrC3JIz+MR+YJLroy5OpFTJtkTSUrdEJkA5WL6VTxTLvQw90d/4TB8U3eZk2CnQJn8LIPeQRjcW7oCcq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(8936002)(478600001)(55016002)(2906002)(86362001)(4744005)(9686003)(8676002)(33656002)(64756008)(76116006)(66946007)(66476007)(66556008)(66446008)(71200400001)(26005)(7696005)(53546011)(6506007)(5660300002)(186003)(83380400001)(110136005)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 4B/TUfjGW6GFpLiJIGqRLH45hhunooUsuEXjVY/X5Cxb8Fd9YNs7MQfh7k9GTAGBGgpQqj0ycLAVjnZOvh7pMXZCzscdNU41cDVx/WbsfUxfXPCg2sr7Cevbo0UogamndzlNhiWa3UlR2gyXGSm5VA19h0sCDsGxFqqosutNJUie2Bm/nKKeqfioyQG9zM4SD4xa3EVyYfcmXWA20T6BkCmtZYc8z1yTESwEvQJxX+I1VhFy29DTD3Y8b5/OCcpBzZOCqkcQQvOqyhs0zoC2cKhL6n8R6XzwrYdOiq2jhaFwy+kFh/33NR5H7Q5ENlHcufuOh1pBb8Km6Mi2F/+nMbY5oaogX32DQKLGOObruYZVxudUamXkMR5rNSwVHOXAuVmMSvANHD7QfkbwPpa55tNrl9wPcoge5SelCglSvGMlJNUyw3Am/foKiNB3NcAEM+reZtkZ4q+2jJ+sYiFZbKN4LGXcjTFoTaUoKsg2LSYDxqP3b/Njfshvw2XkOAS7
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 773a5c3e-35a7-411b-44f8-08d813aba8fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:18:46.7276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 46wVqNUqNz2itPhm5BUd075Tzut4rEjjq7QlMTbgsRebZCEUrWSp54NFBjQsz+bg4PVVt96X884L1mS7MKdYMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/6] igc: Check
 __IGC_PTP_TX_IN_PROGRESS instead of ptp_tx_skb
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
> Sent: Wednesday, June 3, 2020 5:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 3/6] igc: Check
> __IGC_PTP_TX_IN_PROGRESS instead of ptp_tx_skb
> 
> The __IGC_PTP_TX_IN_PROGRESS flag indicates we have a pending tx
> timestamp. In some places, instead of checking that flag, we check
> adapter->ptp_tx_skb. This patch fixes those places to use the flag.
> 
> Quick note about igc_ptp_tx_hwtstamp() change: when that function is
> called, adapter->ptp_tx_skb is expected to be valid always so we
> WARN_ON_ONCE() in case it is not.
> 
> Quick note about igc_ptp_suspend() change: when suspending, we don't
> really need to check if there is a pending timestamp. We can simply
> clear it unconditionally.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
