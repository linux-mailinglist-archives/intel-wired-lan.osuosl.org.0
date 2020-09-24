Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E12F2773A1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 16:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AECC9874B5;
	Thu, 24 Sep 2020 14:09:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y8N-ikpBq0Q3; Thu, 24 Sep 2020 14:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D359B8746C;
	Thu, 24 Sep 2020 14:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F077F1BF85D
 for <intel-wired-lan@osuosl.org>; Thu, 24 Sep 2020 06:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA60786AF6
 for <intel-wired-lan@osuosl.org>; Thu, 24 Sep 2020 06:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDmNfm2i46jV for <intel-wired-lan@osuosl.org>;
 Thu, 24 Sep 2020 06:20:37 +0000 (UTC)
X-Greylist: delayed 00:15:03 by SQLgrey-1.7.6
Received: from harmonic.fortimail.com (gw6018.fortimail.com [173.243.136.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C62D86AED
 for <intel-wired-lan@osuosl.org>; Thu, 24 Sep 2020 06:20:37 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
 by harmonic.fortimail.com  with ESMTP id 08O65U1q003003-08O65U1s003003
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=CAFAIL);
 Wed, 23 Sep 2020 23:05:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c0DHe8JJKmxxpTmggThlTsJeIuYZTVMEwUjOUK0YYkZMHF80VEZt8CrQGQ8pMBlH9XLrTY8CDVVjXCQbz1k0j8jsBvUdznrzJan8/borxjySG5LYspr/74ELSyUEh5Jj5I/MAwkxZ5tyhLLp9iwqnetuBl3rYIeHARrLerrFLFHE2yfShnvyR7OInHbDN0T/IlLJqVTgGdKjjk65tVZLw7aTOmc1Tl2lEXnwXcOUd5Cqo7NxFYD7cfChoAdgOuLIBdl/92K2soONVmfFi0EVTtuEB5DEZ9g7awedYUGW9FQh/Za5YiMOskoKGniYMQ3SDySrhJOYxMM70SbGadnklw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Fd8ZgKMMamLFY6WBXJiSyEFW+WqYGrQoxkRCCQ+AQY=;
 b=EGLM3yfKVz9uDGdaTy6PmE3naLH+g54JfvzZRXfclPsr5Nef9cD1NzOluq3m4J0rg+MJ+vWIBQ6Zst07h2LwXAwQMJHQyhN0Ni4pjQVb+Om96yfuP4zkFADz5LPjvjWbXtrFimWJlBc0gphD0apV1HrWwjDZLIAvkES6U1VceeqUcZ67XZ9EaeVHsYXfeibQjMr3iJ86c5B6+XjzA7GV9GNqAdknPGkD1eZlP63+wabp7DSps5KbqS9XXa3DtdBK4VP+2hY0nGCvfzBQYlIA0Koh7SYVifk2ZefpXgIqOD/E/SpxqnIMU/Yk2u8nT3hhysEnj7hYVbBCzb7odFqLKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=harmonicinc.com; dmarc=pass action=none
 header.from=harmonicinc.com; dkim=pass header.d=harmonicinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=harmonicinc.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Fd8ZgKMMamLFY6WBXJiSyEFW+WqYGrQoxkRCCQ+AQY=;
 b=Ev8uGUHOC9+rNnf8Mb3h0fdebSnZ19h//oQLWmpUUho5FkwKZPNL9Q4AacUc9S9s8e4GIaScabr7HdAJV2ZjD1kJ9CXe5r8ZnM4WMhnZ1SrOkJo9YDkEm1PmTumx3JTJAX/FfYYCLSzLlhIXx9AMxNogauT+ZvNnX0JukcDU6M8=
Received: from BY5PR11MB4152.namprd11.prod.outlook.com (2603:10b6:a03:191::11)
 by BYAPR11MB3479.namprd11.prod.outlook.com (2603:10b6:a03:1e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Thu, 24 Sep
 2020 06:05:28 +0000
Received: from BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::ccc8:f5a7:5944:d9be]) by BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::ccc8:f5a7:5944:d9be%5]) with mapi id 15.20.3391.026; Thu, 24 Sep 2020
 06:05:28 +0000
From: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: General question regarding i40e driver version in upstream kernel
Thread-Index: AQHWkjizkKyvyPz3uU+q5myuEgZ66w==
Date: Thu, 24 Sep 2020 06:05:28 +0000
Message-ID: <33cb749a85e28598dd19e5041d896775b58fb0e1.camel@harmonicinc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
Authentication-Results: harmonic.fortimail.com;
 dkim=pass header.i=@harmonicinc.com
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none; osuosl.org; dmarc=none action=none header.from=harmonicinc.com; 
x-originating-ip: [84.94.40.48]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 061c2ad8-8441-4965-789f-08d8604fd65a
x-ms-traffictypediagnostic: BYAPR11MB3479:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3479E7A99E9B047C60FE558EE2390@BYAPR11MB3479.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sbtp1zQjjFBIckybE+T4BzfVTVGCq+jjkZlJ06TkKAvlKN/NhKs2I1yxlU6vWqCcqGFdcYhlal1t4imIapEMTkXOQqZ47Br4OtOCKVocm0KDrDpkdDE12cmTD4OYh2VjDrey2cL1/Q+tY20Sf82prflM+MxwV/Fl7he/5rhNjsNxvswI2I4gBgZ07xjFba4Tp4ogj4OUAOxomXZj6bAPmSNjuvznPBPL5YD9XUMJQcoLVgI/hWTIfPAG8ZgLMq2QLG84DHcixyntqLK8MD/qpsrqKDb3j4Ki9uRnMTrOQS4SDbSy5fMl34iBkzQyWcSCKTt2vgjR11tHnvKVvkx1V6lOE4uiebJ5J+klv0dNn1TxP3woIN2yLmRQ8eLytfHYoN3U/0mYGiO8SKjyMUVFqe0d0wbSiTJ3KWwKXueR4WTfqH/kquIthySmRZEfPzgBVSjHNCcxNIGTnbCdu9Ywcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4152.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(376002)(39860400002)(396003)(5660300002)(6506007)(86362001)(107886003)(71200400001)(54906003)(2906002)(6916009)(4326008)(26005)(186003)(44832011)(6512007)(6486002)(2616005)(36756003)(316002)(8676002)(8936002)(66556008)(66476007)(64756008)(76116006)(478600001)(66446008)(66946007)(966005)(91956017)(4744005)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: p+RT/K1TDCRSAlWLMBxj7n6xTIYtoCKO3I1Yw2Yjmgl+az7S3ymXVq9RfHstCFy7xk+i0KlX+SVBjufugbfvGPXLSEzdNEzq9KS8i73eeWttn5Fj7dHEFU1O0YFUHwMnv+Tc9DvP9trys+jZZgucLdnPi7XYG2PhZpy6u14uy8J/OWsbXycTSjzq5CbLDXCcCZZHS4vT5my2zNTl9kbLVGCIWHukswZeyPf9WSrDKo/rZ/yqD1zWnXj2z6U5cNZgOszRjrJVRJCaCXj/LEcckk8dInIIpOFTV4+HvMkwbJo4EE2O3UqGTUkOknIacSOYzXyC/oQ1k6USYpqGAlguY9yNXjSlofpkjDsmY1cYswM2MU7aDg9d8EeBDTp+5fkSTlqyUZT7dEVXXRlAPKObyXQ++i6GGdD7SJANZ/rY07TGJLLTNwEpCpOerONTEYOqZ+Forz05ulm/182mDzlxMLgnzbZWm1YiM1VMvJpOj/3HKIKr0LZ+gj4i0X7AR0thpRPxzlxnSn2RgJf6M56Ha6TxCuicwT3+IAAjZ0CGOcNsNeP6Ib3orjB3atO0zcwR1kBdbxspM0+unWArASlF/Zqu77rUmyil/SplwEXZKIy79oAaA7vT4J/0/dhcQHUGaHTqqcJOk4MpxlPLnyuFfg==
Content-ID: <611F8CD4BD7B1C4CA3340DE2E564FA22@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: harmonicinc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4152.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 061c2ad8-8441-4965-789f-08d8604fd65a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2020 06:05:28.6282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 19294cf8-3352-4dde-be9e-7f47b9b6b73d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i7bH2AwnmKIj3NXy/XhUR75e0HnDKspsGD38FQiAMwvRsG4ip4mJvrxZ2Jk3qInE8k0Cqr9O2NyaG/vBdD+LsCOQd1lgyH/iaNzeFAlb6mA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3479
X-FEAS-DKIM: Valid
X-Mailman-Approved-At: Thu, 24 Sep 2020 14:09:53 +0000
Subject: [Intel-wired-lan] General question regarding i40e driver version in
 upstream kernel
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
Cc: Oron Peled <Oron.Peled@harmonicinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi All,

I have a general question related to i40e driver in Linux kernel.
In latest Ubuntu-20.04 release (Focal) with kernel 5.4.0-42-generic the standard i40e driver is quite old (2.8.20-k),
while on Intel official site recently was announced newer i40e (2.12.6).
Also, the latest upstream kernel is 5.8.3 has the same (2.8.20-k) version of i40e driver.
See here: https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/i40e/i40e_main.c#L28

Could, anybody from driver maintainers, clarify why there is such a big gap in versions of i40e driver.
Do all the drivers, from 2.8.20-k version, not stable enough, so they were not taken into kernel upstream?

-- 
Best regards,
Arkady Gilinsky

------------------------------------------

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
