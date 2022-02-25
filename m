Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A88284C4AA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:25:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BA8F41893;
	Fri, 25 Feb 2022 16:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WynPpAfHl84Y; Fri, 25 Feb 2022 16:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 457104183C;
	Fri, 25 Feb 2022 16:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 760981BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 633EF61298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f5wr10oRL8Xg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:25:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9AE9360AF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806335; x=1677342335;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JVC8ZmjniTKJ0+rGDFt2dIfthB7sDEZ0Ku4gQhganq8=;
 b=mknSz3gVLgnc2iHfcEb1leGp3PUBR2dQyjG9HfNKCgJ4doVHChIDKlMX
 dbNOjuQIF2LHenvm2sS8yB/EFSQIXlmAh9bGvKAYZVMMbGpJWvjL41LTJ
 F/drCiIcKk83eEgR+8zPKev36gMifX6qoU9GvFR8Ic6kSvcDrL7WPfVX+
 mAmx3HWzV9MDBfCjJUKi0Vv9uS4jodsIHBYlCrfsmGNSSzr3XppG0OfM9
 F2zRYH4E1ttdMYFRboRVwCugS3ViPUok1b1HftPnUcUJwnGZ7J3s3iLp4
 UrQ3L11Y83/yH76s4HCl5hZVIR3ROe48aCnHzDi+YgE5n9ccImpkeyMIF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313244843"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313244843"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:25:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="707911531"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2022 08:25:35 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:25:34 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:25:34 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:25:34 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:25:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KChZbtgBbuJS2R8xOpF1SXWtFBAZnfw3End+URGiPpwExJoG5agLhOPm2Hf7ssIsdRjSjONJnJpVcYtsN78cLgWvYTsBQZLRrS30uyynPmlRZOusl+Nhv8+xL20DUPjXRd6hgCzLUe7rh9dE2oGnjc/LlRzjZihBoMFQI24fjXdEMZDFw2+rzdXSxX3YeGCtbYbUoZnEvXlpmPK1j1f5UXwhi/0jJIFwTzVA3+xGfLmFkmCa5hf45fNdZcEnzVHb+5ON2EnbJf6NEKpN5c+EwWeEwogbbetsCyBovsEkTgk7K9fVnFY3LJ/lMluuu8TTmOzlXAsL+a5Z6ARAu+lWJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZUdN07VxAkxkleWIuVTssHf/+OuOTrL+o/YXj2JeJik=;
 b=Yl7ZVszX/4/WDnD3fOPK/hLjJeT9KzvWMIwr4MMovGarcD8dPYZled2EubGTrI1B1ScBKeOYwshEW1Vv1kG38A0hCtosLyJNMsV/gNLu9sAOxWrhLCz/R+Z8iuTgyteo9O1xxkwZYJ3tNssZ3kjtboAl90B0vdxkAhBw0BDoGMC09wkdeS/YJBd76Qc2EK08r2JK1kWZ/5yPSy7v9Fl3h5fDNQo+fDkbwIYBhGRMF1bKq1Mt+OoZsWpoqKeRH+sdeY3m/uXP+7XrfyEZOjG3IDJHG0lkgGnUVZEowezTyKkjX0qLj106u37LHptYZ+ASvjHNVacCuUTOMeBoR8gEPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM8PR11MB5670.namprd11.prod.outlook.com (2603:10b6:8:37::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:25:33 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:25:33 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 11/11] ice: convert VF
 storage to hash table with krefs and RCU
Thread-Index: AQHYI32o7ccDh2FiP06Het7jQLp3V6ykgY+A
Date: Fri, 25 Feb 2022 16:25:32 +0000
Message-ID: <SJ0PR11MB56293A38722D40F48CCD997AAB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-12-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-12-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6eeffb71-d790-4a80-cab6-08d9f87b7232
x-ms-traffictypediagnostic: DM8PR11MB5670:EE_
x-microsoft-antispam-prvs: <DM8PR11MB56709323F7EEAE10882A2B80AB3E9@DM8PR11MB5670.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EZX+qjV0ie0IFBO8r2oYLnls5p20JanmOHV2TasoF/gUhkxDmi/K/ZRzfWatPYcPuIQcSLgxVlKdP4kJYHyWwFNPLnH3W/gh+GhLGAdo0lUCVMeUmZTB8g5G8wCqODDDOrKYw6LQzvbTRC6LQe6aPltW9WilhDtN/6xieabgZycadKhxU2vwhtrFoG6cHbb0hCYlzUUuPZisEw8H6TXTs5V2ZqqR6xih2V9tJBSWFn4xyygkz+anJJXHKP+TLd3FE7M77jNH7SgOvsWwj+XxeZSEvmbAC4db5vJHnKiVNUh0Rbsg4kXnAnGzSNYIlGT9NijKdVlrBHIoRcA6sBrg83KBZwwqHsk1KK1sI3+r5Kc1gQVAlEQRbLHCkT9Tq52WyRhP+PKulO6VwpMkUZEfsEULN1bFNrxPp4bDsODJSZYBeGWCxvFKUoVlqU+92DkufO+YIBdRNgja/CpkjH+ZAQHSJ3wxouP4DY4svXMN0p5dDzM8zHFEbpXDZE4vtuqP7y7JPidXDLt+3JSn9xh62jXnUKRaxCCIOH4m+mc4mWiF06LvEDdlD1BEP1vuVYnJuwdyzCvMGM13XDPQM8QO/lH/0aJTdpBHoH2jAmwlbbFBEidAY5OBNh/By+MV4m5vuwgifD2WKfzu7q6G503Sz6P4t5F5cLY/izlJOYOhExi7hPFF0EiBSbxhIVOdbhwDK8mTx0srwUQJjEVWXnU4LA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(33656002)(55016003)(66476007)(66556008)(66946007)(66446008)(76116006)(64756008)(7696005)(6506007)(2906002)(508600001)(86362001)(53546011)(38070700005)(71200400001)(8936002)(52536014)(38100700002)(82960400001)(122000001)(9686003)(5660300002)(110136005)(26005)(186003)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jTP+oWEYwNElvPZ0QYnUgSBYx+MCnI3zV9eoN6F23Ed9ww3A0x60yUEUsEDP?=
 =?us-ascii?Q?+TlFdYa9E81cDdVM39WDxJ+17msnrVBJwyN1uhPN1/MrSq8Yja5b1Qh7bYSO?=
 =?us-ascii?Q?i2ptEYqnLrfUGqcLDqREB5S/WAAZXqRRUyarw0NPK/RJnN4eq4HqzKnX0gig?=
 =?us-ascii?Q?B4be1BcM6i8J6xFOBrWejX3OkQhZM3Zcq8ZyDDHCTevuyA3xJ88GnHDil7DH?=
 =?us-ascii?Q?FQQyX3/6ZOakijnyLDhODvzss8R+h+/WxqVsfpBnUd/vKerY0TDlReafupzj?=
 =?us-ascii?Q?U2iPTYxKpnKesO+G80hIJTwhlGXJqIzpmnn1BzQtZbqjCJLCeaICNSIaTWHS?=
 =?us-ascii?Q?iiM7MLL8qaOIHduYwkzrZZnMg7uTQnIyO9/jrDCcwXpU4Ou2HdAZRDZg2zvD?=
 =?us-ascii?Q?382gAGWb+Gg/CudGwDn5O8ies+VVh3Bpcjud2G9iwTetbx+5Pn3GqnLFgWj7?=
 =?us-ascii?Q?yN2EjvGYRwyVf987EN+I+2l9xVWd4FCyc+w2koJXTfnDahfk8IdXWI5VPtWS?=
 =?us-ascii?Q?YOb2Xbk2HmbDRP8LGEnBxox/VDMf0vIj4X3wCyO2l+JrY8yoEYmygDFSabng?=
 =?us-ascii?Q?qF0xRK3M69naG2Gt5qDmiIsJuWRki6irScKI/JgcRxDb8Z1wps7fgJBUw860?=
 =?us-ascii?Q?8dRN6Jz8y+Ak/Ids69nfn/KnJQisZpGfj7q50TeSw4hXwf9lSgzQrmlY5dci?=
 =?us-ascii?Q?LcORJ2voPJHkHtT3GvO44kNEIQaIE6oBO2JsNK/uMCQjaIG/LhawiqfO5utB?=
 =?us-ascii?Q?q98veNCdDd4K41/KiP9XhoCsVuYhrn5vIKg8LrQW9szlVIQmecdiR6ezSFdO?=
 =?us-ascii?Q?SybG+CftphBWMj5LAOwv1JYBo3PA4tNNzeWPwA4r+9BLYcqq2712vnXYqJxC?=
 =?us-ascii?Q?5gpixlvOzmgw8RP/iGwkXHunL5wND0Gl7JoEQ7wBSHhmDc1xa4AXiaxcBGIy?=
 =?us-ascii?Q?gmnROH0LP+TRWy0IYiUuIl0avkRr8zcJwLBq0xruF283/jdALz0gQH4zd2lk?=
 =?us-ascii?Q?eKsCr7B4JNZqDy5RyXO01xZt7FicYdtCJgFCNNRCG+cDy7pMYiTIWSNN5lsH?=
 =?us-ascii?Q?6b/hSZqbN6fAVcbDpFPUQJdOYolNoCJaw7MgdqUFx+3kAJYG83VwAeG+dsIY?=
 =?us-ascii?Q?RLJwRn5O9pDxN4JAt7V+o/s4QBYj48o6eU3kPiOK+EoG+i6y1FJrkXn4ixKz?=
 =?us-ascii?Q?Yp2f/Er6pAZIrxrrl/xtCi0xX1VohMP/sfSfkZFXy7fNVC/CAlj1wozRb6tT?=
 =?us-ascii?Q?FGQnbJDqRP3sIyghtXydaALMJR1p3jZAPCn6EH32iefJQPk5lMJW6zbBmWkk?=
 =?us-ascii?Q?jPgCQ5PRHjj8yhzxfjD6YpinicTbKvHDrwB18tSwQdzpyw8I0QvPnQqPh89h?=
 =?us-ascii?Q?vmugOwAeg6IC7dB6vSebJetF2I6eM0lfWx7p+fWDo6tAp9NtGrF07GQnXsvy?=
 =?us-ascii?Q?FObEVAA/OGOh8Ha7k9rN0wD5rcLSObw+8BT2qYQ6E2R5eRl+W7rv38TRUKxS?=
 =?us-ascii?Q?a2/83Y0U9HhGDA/W4Xu/uhI0lgJZfBRUkyRGST0/ltBqmzwDcMR4Z9/yCbNq?=
 =?us-ascii?Q?1iS8lP56y1YDyVpgFikGUalG3oR063zKihumkj32acCiTp0C8AK8tzxiHYM0?=
 =?us-ascii?Q?Sa6FUYBP3hUoCBanWzAwllv/x/1z/qRhjy7C29AJcMzR7c0zg2oHA85w4ssZ?=
 =?us-ascii?Q?tMzdVQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eeffb71-d790-4a80-cab6-08d9f87b7232
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:25:32.9451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o7TJnlwRco7NRXoosdSh5AhCvt+4SSch24MWbfKJ5/8Yef3vLuTJvXSOu59PLJyIUYRT5QmIesd8LWNp0uyoGLDpO8JX7ffXYb4G2uNgnLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5670
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 11/11] ice: convert VF
 storage to hash table with krefs and RCU
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
> Jacob Keller
> Sent: Wednesday, February 16, 2022 10:38 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 11/11] ice: convert VF storage
> to hash table with krefs and RCU
> 
> The ice driver stores VF structures in a simple array which is allocated once at
> the time of VF creation. The VF structures are then accessed from the array
> by their VF ID. The ID must be between 0 and the number of allocated VFs.
> 
> Multiple threads can access this table:
> 
>  * .ndo operations such as .ndo_get_vf_cfg or .ndo_set_vf_trust
>  * interrupts, such as due to messages from the VF using the virtchnl
>    communication
>  * processing such as device reset
>  * commands to add or remove VFs
> 
> The current implementation does not keep track of when all threads are
> done operating on a VF and can potentially result in use-after-free issues
> caused by one thread accessing a VF structure after it has been released
> when removing VFs. Some of these are prevented with various state flats
> and checks.
> 
> In addition, this structure is quite static and does not support a planned
> future where virtualization can be more dynamic. As we begin to look at
> supporting Scalable IOV with the ice driver (as opposed to just supporting
> Single Root IOV), this structure is not sufficient.
> 
> In the future, VFs will be able to be added and removed individually and
> dynamically.
> 
> To allow for this, and to better protect against a whole class of use-after-free
> bugs, replace the VF storage with a combination of a hash table and krefs to
> reference track all of the accesses to VFs through the hash table.
> 
> A hash table still allows efficient look up of the VF given its ID, but also allows
> adding and removing VFs. It does not require contiguous VF IDs.
> 
> The use of krefs allows the cleanup of the VF memory to be delayed until
> after all threads have released their reference (by calling ice_put_vf).
> 
> To prevent corruption of the hash table, a combination of RCU and the
> mutex table_lock are used. Addition and removal from the hash table use
> the RCU-aware hash macros. This allows simple read-only look ups that
> iterate to locate a single VF can be fast using RCU. Accesses which modify the
> hash table, or which can't take RCU because they sleep, will hold the mutex
> lock.
> 
> By using this design, we have a stronger guarantee that the VF structure can't
> be released until after all threads are finished operating on it.
> We also pave the way for the more dynamic Scalable IOV implementation in
> the future.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |  16 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  13 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  24 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   8 +
>  drivers/net/ethernet/intel/ice/ice_repr.c     |   4 +
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 377 +++++++++++++-----
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  45 ++-
>  8 files changed, 364 insertions(+), 125 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index c27013afcadb..9a84d746a6c4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -209,6 +209,8 @@ static void

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
