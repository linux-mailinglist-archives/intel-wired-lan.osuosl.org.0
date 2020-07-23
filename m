Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F17AD22A47E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E13286DF1;
	Thu, 23 Jul 2020 01:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7qJrrJzxVBcB; Thu, 23 Jul 2020 01:24:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D60A886DF2;
	Thu, 23 Jul 2020 01:24:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8BF1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 06A2D2408D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mN2FjpfFE2eH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:24:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D944203B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:17 +0000 (UTC)
IronPort-SDR: OgOift68hPKCsWaYtsTxJH+mQLxor7Yqz9MgBBt+8sKincZaGTyghCX8GDvk2dhh6ti5QCxVJE
 XGlOFfy572kA==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="151760268"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="151760268"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:24:17 -0700
IronPort-SDR: Yie4Kp2x/GB/IYcJfDgke0iyxODDBtb8WtbOcpsDFMkC70miXjf0rZxS8j/r240Y0+tFewgp4y
 joocOCZDFLnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="362892311"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 22 Jul 2020 18:24:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:24:16 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:24:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:24:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CH/V7G4bzd7mI+Il3t4PaYHn2t0N+rmRPdnsaNcYFZI+3onxsuKfTbbiGxuxS6od9KWlcJD/LXw2/3zN+C49+zSU/n78mRmAU+qKSl3OCaFpU8na+HoMU35aOAxxFMXUq7427d4riXjkG9XQe2WkcNOicH6SzxnH1YdbKEGggqEBF8oGD7XKHbOTTh60ekXReUMOpN+YYvPv+LLxwlHD+eR8QA6P+nQTFEkZhOFOGN/L33t5u/h0DWy9+iABILidhvNEf+mzD01dPmiYfd0PRZmp35ahjCNYqitZAcXy/qnZ3qKIZPg09pwKJ2NLfbBB+mdHB8FrnmUFmSrsF7MmTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7OeKIgNPL7hLILvQLe5XZAE81WNRRS2fcFv7ZRZn18A=;
 b=QRw/KlUVdO5uauhZex6/yQAf+/ZqdXFY2DH7vRyFtav8UWY2T+wZH/NK9wAjNzBxssW3/VxpqZHDb1oJ4Px5APHsEvWqHu1zRA6Va00dfU/RwFuBl9s//QFbPEUPS2ObJWEZP/dTSd495G4WAujnzTZ5kazknD0HHnmQlRlSBW7sx+4Gnkf899faEt4armYzu9viZnmiznlz7mHeSww7bS1e2+44jd8kjcvfL7oHi7EWJ6bQk+2+Lfku4PHw0TBKH1AndxqbDv5Z7Mk0T/qdz171AI81MwSiIEfdxIhUAidBT6Vq59IG5RCzuEGlaAtCQxr7BAxjkLzzbaOizTnG3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7OeKIgNPL7hLILvQLe5XZAE81WNRRS2fcFv7ZRZn18A=;
 b=aHWrK164YCUwqPnJNzDiUO7EykZx6zTGwZUtBellbuVLL6UvN874TXgAzHpJIxCrZqzknGl5p+3beNWMn6TS3zns7JMIFv6/yRZxfYtuEepdey6gvfqkGRW8iTnjFINco8LeqzKSEE/wuFwYax0fdKFsqYFqH46ROK0GxPHvYFo=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:24:15 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:24:15 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 13/15] ice: add AQC get link
 topology handle support
Thread-Index: AQHWVgztRwtGH7lfN0aikvQzUCOnT6kUc8tw
Date: Thu, 23 Jul 2020 01:24:15 +0000
Message-ID: <BN6PR1101MB2145D78E376F7BF33CD2BA768C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-13-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 0604bf92-641d-43bf-5bc2-08d82ea71d44
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB1537D575BBE219E566102EDB8C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9C4M2me/6yPXlTpbGesfHhuo3jkZ9CZ8rfx+CAaSUMOeOGxl8M2HH32f27quDAPH+n2Sh99mXsc4Ya8TxJWOTlZ95K3aAfdjkbhn95Bo0UOAVq55bohe4sDvllIB2uhG7Wm20ZWpK5Af13xJFe7HrXesypz9KEsQSi0ssZQw6b7yT/3cPVVav/q4HLCUEOV+q29n2wMQO2RlMnj/iXjKhR0lpJegzHaHHY//nEMFkFA0nL/AzKXeXi/g4dHXnhOWmJcpiXfRb4gld4grGJKJkglCaJDgV93Wf4ccoREkrIwd+bCu43UBxH5II2M4woIM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +X3jx26rQqd/HqwfBHI9FMHh7kM2Y0EOOXdkziIV2qccHcwPfzNTanJfcb7VzV4uO60BedXYhmYteFtMSceSdNEDlxUyyGj+E+Fr90GODFJshW/hbh0gC7bt8eQuKgsCY/2YanmvzxDROHURf0wET8NHJ/+b3I+Eq5BQIQMHZk1YDhUul5Nj//g3t6NLs41rKh+NoEIto+LFSHbtT22huru8ZXx6pdfd6tW6h/R4PbjsrbEAgMdl4/T/673rX2jj2Aahw7R0tQHHvDCSktOoJiifxrt+EWWFrIxng938UdLkf+4gU0xTr0PXWC2wB5SoX4X0TWZwSZtKv0xvjFs2eJpgO3igEpDwwphU0Rt/3/Onv0f/AggT+j0fb8e7abATYx+KRncWgOf7/JfIJHmg3AelEkjnLF4uuEiyoN4Sp9H0T8yKnNdmWf71R+t1ZssiUZtmTf0vG2spVxIrO1OuM6plRh5UMOCyuUbpXxEs4J4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0604bf92-641d-43bf-5bc2-08d82ea71d44
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:24:15.6801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EhTDMphwNZtzN5omHSQisGvht03UzWCBfvb1TDjZ99Z0IuYX/YPheqaaJCJhUb+siTaEoNGDhUtDp/cp4PvidnWAT76eIPJLPrJMmEqukqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 13/15] ice: add AQC get link
 topology handle support
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 13/15] ice: add AQC get link topology
> handle support
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Add AQC get link topology handle support. This is needed to determine
> Direct Attach (DA) or backplane media type for PHY types that support
> either. Get link topology handle cage node type request can be used to
> determine if a cage is present or not. If a cage is present for PHY types that
> supports both DA and backplane media type, then the media type is DA, else
> the media type is backplane.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 53 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 66 ++++++++++++++++++-
>  2 files changed, 118 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
