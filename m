Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A6EFE776
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 23:15:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B12C86A02;
	Fri, 15 Nov 2019 22:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTGmK20ypUDd; Fri, 15 Nov 2019 22:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17086869F6;
	Fri, 15 Nov 2019 22:15:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 466F71BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 21:57:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4000720478
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 21:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VsXkyb8MCrYM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 21:57:45 +0000 (UTC)
X-Greylist: delayed 03:34:35 by SQLgrey-1.7.6
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130071.outbound.protection.outlook.com [40.107.13.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 883B4203FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 21:57:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xx/z2XxJ3tlrGyiGMp5AMCrA6NMBKwkI2MQPFRMBY7PvYr0FPt0QZ9Bsv8Wu9YJcfoJTINHlXxqujNsIWVDmzNHPvL1nZ2VtLVg+D0AYOQp8rFv1eaJfgLuXmphim9eRhSQtUNAd1gllTfwxuCS5h/gd+uJ1BPEbgBva5j0HiECV2Ky+gUjLeQefaUM30RdtIHpATFpK9xPQqX3Zb+2loA8kDXlkXMzSQuzZJ1BZaM0L6BuAFeD9kCw5zX6olalxNHVXnXaFfUIVAAl4pez/pZy3+FYEtT6Rz0j7YYtCgBjMfQgH6MrTdMcqPY5L+zm+E8Ii/gBSKsFoH4dDifIykw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sCuFB1NlSETFlQt0aAJ/S+qQ9YJrEnm3XGfUhR80rxU=;
 b=Tk0Om+eOffXxO2PnWvA//Rm9F6brocid48duaiYEgLAgRKw/ubX3n4CsjIrx8LKQMukQC5iltUhHC3u+fH/FuqK7t2DsW1ImEeKM1QFcmu8OA/5XhRnk59i3jVzPjJijICeMl7AN3fH26Zwmq6o3DsRIZe2Byp45mRpZ7oQ+QJ3SxbHw4mxGTlHdVH9l3AvcrfXXFSPWP0UpvzfekWZAye5s55Nxy5+rYpEFNPBVMgB6V/BJTdVvjQu1c6c+9G/QzfQVic0tFiiSqkJoMzBp69bsW2szbfoJf88D9w6t645ClS/c/ZpdS4ZQucGawkucl08qqS4fyXnpvwafzee6Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sCuFB1NlSETFlQt0aAJ/S+qQ9YJrEnm3XGfUhR80rxU=;
 b=c/M1Pkzm32GGIDwVKdooQKQIeQgjnYejy5e+KlwKUrZKMzKAxNs2naGuo0etoNiOVIuZIH0ezXC8ltMR6Y3QOQ+hOs6ikso7V861PYQVIxyqZefANj767nB1vbFwl3jQUpci54VyQ8ls1n/BtQcsms0P/w866jPkYAOkPtPF2EM=
Received: from AM4PR05MB3313.eurprd05.prod.outlook.com (10.171.189.29) by
 AM4PR05MB3298.eurprd05.prod.outlook.com (10.171.187.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Fri, 15 Nov 2019 18:23:06 +0000
Received: from AM4PR05MB3313.eurprd05.prod.outlook.com
 ([fe80::59bd:e9d7:eaab:b2cc]) by AM4PR05MB3313.eurprd05.prod.outlook.com
 ([fe80::59bd:e9d7:eaab:b2cc%4]) with mapi id 15.20.2451.023; Fri, 15 Nov 2019
 18:23:06 +0000
From: Ariel Levkovich <lariel@mellanox.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Saeed Mahameed
 <saeedm@mellanox.com>, "richardcochran@gmail.com" <richardcochran@gmail.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 06/13] mlx5: reject unsupported external timestamp
 flags
Thread-Index: AQHVmxuuaGhUBoj4KkqsB9Kgi1dgk6eLWewAgAAUMICAAR8egA==
Date: Fri, 15 Nov 2019 18:23:06 +0000
Message-ID: <fd597b44-1d5b-f79f-63b9-3dcc2e58b05f@mellanox.com>
References: <20191114184507.18937-7-richardcochran@gmail.com>
 <c90050bd6a63ef3a6f0c7ea999f44ec51c07e917.camel@mellanox.com>
 <02874ECE860811409154E81DA85FBB5896990AC2@ORSMSX121.amr.corp.intel.com>
In-Reply-To: <02874ECE860811409154E81DA85FBB5896990AC2@ORSMSX121.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=lariel@mellanox.com; 
x-originating-ip: [2604:2000:1342:488:cc27:8e0e:9eda:f697]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 412767f5-5a56-474a-6d6d-08d769f8dc48
x-ms-traffictypediagnostic: AM4PR05MB3298:|AM4PR05MB3298:
x-ld-processed: a652971c-7d2e-4d9b-a6a4-d149256f461b,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM4PR05MB329886C5330B51C577D3E2F8BA700@AM4PR05MB3298.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(13464003)(199004)(189003)(66446008)(64756008)(6436002)(446003)(6116002)(11346002)(66476007)(6486002)(110136005)(76176011)(54906003)(71190400001)(71200400001)(476003)(2616005)(4001150100001)(186003)(229853002)(2201001)(305945005)(14454004)(7416002)(99286004)(7736002)(46003)(102836004)(6506007)(53546011)(478600001)(2906002)(66556008)(66946007)(6246003)(5660300002)(8676002)(4326008)(6512007)(91956017)(86362001)(36756003)(31686004)(8936002)(76116006)(256004)(81156014)(81166006)(316002)(486006)(31696002)(14444005)(25786009)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR05MB3298;
 H:AM4PR05MB3313.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VZ7faVEQ7VxRb09G7LsaAanTx2UamyQfBzQ6x/nET7URKQXwjHKi9qSGnCQNefflLZmNTucRtUfq8mTnq3ttj/AhhEvYLQ15BMCQ4RNLdbF9PiUH9R8V08J/s++6V721tOuaKX33I30hSEoMuzJWqSxvLUS9/DzS/++hBmzevPcn1C1qcWir5acWCPIAm27U4vs79wvhd+p/U2QuJ7fWhOP7G+LLv3OnjZlkYnQjQxjnnkgHCTS+0i1Z4JoPnzUtRre6PCSNZogYOT8Y+8k2XK0mt/Sg+p7+BvOVtw3sV6LUDGtKQpa8f0i95B3EJFe2xGnkx/F7rRGZT8aILvBGfoeemkU8fXYuco1LL2siIcQS1lF+XhHckk//hR9lAq6ffKW1xXDVFIoNDuMQli6Q4mgN2di6ANc8xgUYbXWyb9iMlqT2x4CLh18WXoAHjHgu
Content-ID: <B8A696B78274B3409A549E6A010DC009@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 412767f5-5a56-474a-6d6d-08d769f8dc48
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 18:23:06.3315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y/bQyA1HN3/2UCHTWckk6VODJfYHjp6PgTN3bjAY/6BkPOvhF/fQStdKCtLXHhPVv+QguNV6Qh1ozokE6wF1aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR05MB3298
X-Mailman-Approved-At: Fri, 15 Nov 2019 22:15:18 +0000
Subject: Re: [Intel-wired-lan] [PATCH net 06/13] mlx5: reject unsupported
 external timestamp flags
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>,
 "brandon.streiff@ni.com" <brandon.streiff@ni.com>,
 "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>,
 "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "stefan.sorensen@spectralink.com" <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/14/19 8:15 PM, Keller, Jacob E wrote:
>> -----Original Message-----
>> From: Saeed Mahameed <saeedm@mellanox.com>
>> Sent: Thursday, November 14, 2019 4:03 PM
>> To: Ariel Levkovich <lariel@mellanox.com>; richardcochran@gmail.com;
>> netdev@vger.kernel.org
>> Cc: Hall, Christopher S <christopher.s.hall@intel.com>; Eugenia Emantayev
>> <eugenia@mellanox.com>; davem@davemloft.net;
>> sergei.shtylyov@cogentembedded.com; Feras Daoud <ferasda@mellanox.com>;
>> stefan.sorensen@spectralink.com; brandon.streiff@ni.com; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>;
>> intel-wired-lan@lists.osuosl.org; felipe.balbi@linux.intel.com
>> Subject: Re: [PATCH net 06/13] mlx5: reject unsupported external timestamp
>> flags
>>
>> On Thu, 2019-11-14 at 10:45 -0800, Richard Cochran wrote:
>>> From: Jacob Keller <jacob.e.keller@intel.com>
>>>
>>> Fix the mlx5 core PTP support to explicitly reject any future flags
>>> that
>>> get added to the external timestamp request ioctl.
>>>
>>> In order to maintain currently functioning code, this patch accepts
>>> all
>>> three current flags. This is because the PTP_RISING_EDGE and
>>> PTP_FALLING_EDGE flags have unclear semantics and each driver seems
>>> to
>>> have interpreted them slightly differently.
>>>
>>> [ RC: I'm not 100% sure what this driver does, but if I'm not wrong
>>> it
>>>        follows the dp83640:
>>>
>> The driver will check if the PTP_FALLING_EDGE flag was set then it will
>> set it in HW, if not then it is going to default to PTP_RISING_EDGE, so
>> LGTM.
>>
>> Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>
>>
>> But same story here, old tools that lazily set 0xffff or 0x0000 and
>> expected every thing to work.. again not sure if they do exist.
>>
>> Ariel please have a look at this patch.
>>
> As long as they stick to the original ioctls this won't be a problem, because the v1 ioctl now explicitly clears unsupported bits before calling driver, so this check will pass. Obviously, this change should not be backported to earlier than 5.4 without also backporting that masking in the original ioctl functions.
>
> Thanks,
> Jake
>
Agree.

Just a small suggestion, you can perform the check with simply 
PTP_EXTTS_V1_VALID_FLAGS. Italready combines all the bits we need to check.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
