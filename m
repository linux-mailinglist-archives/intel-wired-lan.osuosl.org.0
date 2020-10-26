Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3157729998C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Oct 2020 23:22:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5D3887269;
	Mon, 26 Oct 2020 22:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q9-7nVog2czg; Mon, 26 Oct 2020 22:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1851C8725F;
	Mon, 26 Oct 2020 22:22:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 004241BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 22:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EACCB8578B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 22:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YOUFySnjWfos for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 22:22:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E35F484FDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 22:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603750968;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=4NVeoG2v0GqbZ/HFd7nKO1g7bbY1pmjGFNQlBCk0P5c=;
 b=UYw9KaYmu2uSSdNIPsiCGhpRbHR4zNTfPyDHsGxTHZB5DqnAk2H+jv9t0FkXBGYW+jHiGw
 m6KIJoyHJTxpeb8K1kb96S0f1+Z8w3ftM+BkrUsV3TvtsT/ug8pESGo365cuzmO0pXl19v
 nGlB5Y3QLhGtX14Qvt2OCo7eUPjO5sE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-580-t4buKekdNzWPHhLhLfiPpw-1; Mon, 26 Oct 2020 18:22:42 -0400
X-MC-Unique: t4buKekdNzWPHhLhLfiPpw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8AB38BAF44;
 Mon, 26 Oct 2020 22:22:32 +0000 (UTC)
Received: from [10.10.114.126] (ovpn-114-126.rdu2.redhat.com [10.10.114.126])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EDA973660;
 Mon, 26 Oct 2020 22:22:30 +0000 (UTC)
To: Thomas Gleixner <tglx@linutronix.de>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
References: <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
 <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
 <20201020134128.GT2628@hirez.programming.kicks-ass.net>
 <6736e643-d4ae-9919-9ae1-a73d5f31463e@redhat.com>
 <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
 <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
 <87ft6464jf.fsf@nanos.tec.linutronix.de>
 <20201026173012.GA377978@fuller.cnet>
 <875z6w4xt4.fsf@nanos.tec.linutronix.de>
 <86f8f667-bda6-59c4-91b7-6ba2ef55e3db@intel.com>
 <87v9ew3fzd.fsf@nanos.tec.linutronix.de>
 <85b5f53e-5be2-beea-269a-f70029bea298@intel.com>
 <87lffs3bd6.fsf@nanos.tec.linutronix.de>
From: Nitesh Narayan Lal <nitesh@redhat.com>
Autocrypt: addr=nitesh@redhat.com; prefer-encrypt=mutual; keydata=
 mQINBFl4pQoBEADT/nXR2JOfsCjDgYmE2qonSGjkM1g8S6p9UWD+bf7YEAYYYzZsLtbilFTe
 z4nL4AV6VJmC7dBIlTi3Mj2eymD/2dkKP6UXlliWkq67feVg1KG+4UIp89lFW7v5Y8Muw3Fm
 uQbFvxyhN8n3tmhRe+ScWsndSBDxYOZgkbCSIfNPdZrHcnOLfA7xMJZeRCjqUpwhIjxQdFA7
 n0s0KZ2cHIsemtBM8b2WXSQG9CjqAJHVkDhrBWKThDRF7k80oiJdEQlTEiVhaEDURXq+2XmG
 jpCnvRQDb28EJSsQlNEAzwzHMeplddfB0vCg9fRk/kOBMDBtGsTvNT9OYUZD+7jaf0gvBvBB
 lbKmmMMX7uJB+ejY7bnw6ePNrVPErWyfHzR5WYrIFUtgoR3LigKnw5apzc7UIV9G8uiIcZEn
 C+QJCK43jgnkPcSmwVPztcrkbC84g1K5v2Dxh9amXKLBA1/i+CAY8JWMTepsFohIFMXNLj+B
 RJoOcR4HGYXZ6CAJa3Glu3mCmYqHTOKwezJTAvmsCLd3W7WxOGF8BbBjVaPjcZfavOvkin0u
 DaFvhAmrzN6lL0msY17JCZo046z8oAqkyvEflFbC0S1R/POzehKrzQ1RFRD3/YzzlhmIowkM
 BpTqNBeHEzQAlIhQuyu1ugmQtfsYYq6FPmWMRfFPes/4JUU/PQARAQABtCVOaXRlc2ggTmFy
 YXlhbiBMYWwgPG5pbGFsQHJlZGhhdC5jb20+iQI9BBMBCAAnBQJZeKUKAhsjBQkJZgGABQsJ
 CAcCBhUICQoLAgQWAgMBAh4BAheAAAoJEKOGQNwGMqM56lEP/A2KMs/pu0URcVk/kqVwcBhU
 SnvB8DP3lDWDnmVrAkFEOnPX7GTbactQ41wF/xwjwmEmTzLrMRZpkqz2y9mV0hWHjqoXbOCS
 6RwK3ri5e2ThIPoGxFLt6TrMHgCRwm8YuOSJ97o+uohCTN8pmQ86KMUrDNwMqRkeTRW9wWIQ
 EdDqW44VwelnyPwcmWHBNNb1Kd8j3xKlHtnS45vc6WuoKxYRBTQOwI/5uFpDZtZ1a5kq9Ak/
 MOPDDZpd84rqd+IvgMw5z4a5QlkvOTpScD21G3gjmtTEtyfahltyDK/5i8IaQC3YiXJCrqxE
 r7/4JMZeOYiKpE9iZMtS90t4wBgbVTqAGH1nE/ifZVAUcCtycD0f3egX9CHe45Ad4fsF3edQ
 ESa5tZAogiA4Hc/yQpnnf43a3aQ67XPOJXxS0Qptzu4vfF9h7kTKYWSrVesOU3QKYbjEAf95
 NewF9FhAlYqYrwIwnuAZ8TdXVDYt7Z3z506//sf6zoRwYIDA8RDqFGRuPMXUsoUnf/KKPrtR
 ceLcSUP/JCNiYbf1/QtW8S6Ca/4qJFXQHp0knqJPGmwuFHsarSdpvZQ9qpxD3FnuPyo64S2N
 Dfq8TAeifNp2pAmPY2PAHQ3nOmKgMG8Gn5QiORvMUGzSz8Lo31LW58NdBKbh6bci5+t/HE0H
 pnyVf5xhNC/FuQINBFl4pQoBEACr+MgxWHUP76oNNYjRiNDhaIVtnPRqxiZ9v4H5FPxJy9UD
 Bqr54rifr1E+K+yYNPt/Po43vVL2cAyfyI/LVLlhiY4yH6T1n+Di/hSkkviCaf13gczuvgz4
 KVYLwojU8+naJUsiCJw01MjO3pg9GQ+47HgsnRjCdNmmHiUQqksMIfd8k3reO9SUNlEmDDNB
 XuSzkHjE5y/R/6p8uXaVpiKPfHoULjNRWaFc3d2JGmxJpBdpYnajoz61m7XJlgwl/B5Ql/6B
 dHGaX3VHxOZsfRfugwYF9CkrPbyO5PK7yJ5vaiWre7aQ9bmCtXAomvF1q3/qRwZp77k6i9R3
 tWfXjZDOQokw0u6d6DYJ0Vkfcwheg2i/Mf/epQl7Pf846G3PgSnyVK6cRwerBl5a68w7xqVU
 4KgAh0DePjtDcbcXsKRT9D63cfyfrNE+ea4i0SVik6+N4nAj1HbzWHTk2KIxTsJXypibOKFX
 2VykltxutR1sUfZBYMkfU4PogE7NjVEU7KtuCOSAkYzIWrZNEQrxYkxHLJsWruhSYNRsqVBy
 KvY6JAsq/i5yhVd5JKKU8wIOgSwC9P6mXYRgwPyfg15GZpnw+Fpey4bCDkT5fMOaCcS+vSU1
 UaFmC4Ogzpe2BW2DOaPU5Ik99zUFNn6cRmOOXArrryjFlLT5oSOe4IposgWzdwARAQABiQIl
 BBgBCAAPBQJZeKUKAhsMBQkJZgGAAAoJEKOGQNwGMqM5ELoP/jj9d9gF1Al4+9bngUlYohYu
 0sxyZo9IZ7Yb7cHuJzOMqfgoP4tydP4QCuyd9Q2OHHL5AL4VFNb8SvqAxxYSPuDJTI3JZwI7
 d8JTPKwpulMSUaJE8ZH9n8A/+sdC3CAD4QafVBcCcbFe1jifHmQRdDrvHV9Es14QVAOTZhnJ
 vweENyHEIxkpLsyUUDuVypIo6y/Cws+EBCWt27BJi9GH/EOTB0wb+2ghCs/i3h8a+bi+bS7L
 FCCm/AxIqxRurh2UySn0P/2+2eZvneJ1/uTgfxnjeSlwQJ1BWzMAdAHQO1/lnbyZgEZEtUZJ
 x9d9ASekTtJjBMKJXAw7GbB2dAA/QmbA+Q+Xuamzm/1imigz6L6sOt2n/X/SSc33w8RJUyor
 SvAIoG/zU2Y76pKTgbpQqMDmkmNYFMLcAukpvC4ki3Sf086TdMgkjqtnpTkEElMSFJC8npXv
 3QnGGOIfFug/qs8z03DLPBz9VYS26jiiN7QIJVpeeEdN/LKnaz5LO+h5kNAyj44qdF2T2AiF
 HxnZnxO5JNP5uISQH3FjxxGxJkdJ8jKzZV7aT37sC+Rp0o3KNc+GXTR+GSVq87Xfuhx0LRST
 NK9ZhT0+qkiN7npFLtNtbzwqaqceq3XhafmCiw8xrtzCnlB/C4SiBr/93Ip4kihXJ0EuHSLn
 VujM7c/b4pps
Organization: Red Hat Inc,
Message-ID: <959997ee-f393-bab0-45c0-4144c37b9185@redhat.com>
Date: Mon, 26 Oct 2020 18:22:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <87lffs3bd6.fsf@nanos.tec.linutronix.de>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nitesh@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v4 4/4] PCI: Limit
 pci_alloc_irq_vectors() to housekeeping CPUs
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
Cc: juri.lelli@redhat.com, Peter Zijlstra <peterz@infradead.org>,
 linux-pci@vger.kernel.org, sassmann@redhat.com, vincent.guittot@linaro.org,
 hch@infradead.org, mingo@redhat.com, intel-wired-lan@lists.osuosl.org,
 helgaas@kernel.org, thomas.lendacky@amd.com, lgoncalv@redhat.com,
 frederic@kernel.org, jlelli@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 jiri@nvidia.com, bhelgaas@google.com, mike.marciniszyn@intel.com,
 netdev@vger.kernel.org, dennis.dalessandro@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4940551499123471200=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4940551499123471200==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="BVxbqdCEOjLEJcmbmUgDQ7BWUrYCJpHul"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--BVxbqdCEOjLEJcmbmUgDQ7BWUrYCJpHul
Content-Type: multipart/mixed; boundary="p9roNLmE7wHjwGCpMLdsSh6G42Ivh579L"

--p9roNLmE7wHjwGCpMLdsSh6G42Ivh579L
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 10/26/20 5:50 PM, Thomas Gleixner wrote:
> On Mon, Oct 26 2020 at 14:11, Jacob Keller wrote:
>> On 10/26/2020 1:11 PM, Thomas Gleixner wrote:
>>> On Mon, Oct 26 2020 at 12:21, Jacob Keller wrote:
>>>> Are there drivers which use more than one interrupt per queue? I know
>>>> drivers have multiple management interrupts.. and I guess some drivers
>>>> do combined 1 interrupt per pair of Tx/Rx..  It's also plausible to to
>>>> have multiple queues for one interrupt .. I'm not sure how a single
>>>> queue with multiple interrupts would work though.
>>> For block there is always one interrupt per queue. Some Network drivers
>>> seem to have seperate RX and TX interrupts per queue.
>> That's true when thinking of Tx and Rx as a single queue. Another way to
>> think about it is "one rx queue" and "one tx queue" each with their own
>> interrupt...
>>
>> Even if there are devices which force there to be exactly queue pairs,
>> you could still think of them as separate entities?
> Interesting thought.
>
> But as Jakub explained networking queues are fundamentally different
> from block queues on the RX side. For block the request issued on queue
> X will raise the complete interrupt on queue X.
>
> For networking the TX side will raise the TX interrupt on the queue on
> which the packet was queued obviously or should I say hopefully. :)

This is my impression as well.

> But incoming packets will be directed to some receive queue based on a
> hash or whatever crystallball logic the firmware decided to implement.
>
> Which makes this not really suitable for the managed interrupt and
> spreading approach which is used by block-mq. Hrm...
>
> But I still think that for curing that isolation stuff we want at least
> some information from the driver. Alternative solution would be to grant
> the allocation of interrupts and queues and have some sysfs knob to shut
> down queues at runtime. If that shutdown results in releasing the queue
> interrupt (via free_irq()) then the vector exhaustion problem goes away.

I think this is close to what I and Marcelo were discussing earlier today
privately.

I don't think there is currently a way to control the enablement/disablemen=
t of
interrupts from the userspace.

I think in terms of the idea we need something similar to what i40e does,
that is shutdown all IRQs when CPU is suspended and restores the interrupt
schema when the CPU is back online.

The two key difference will be that this API needs to be generic and also
needs to be exposed to the userspace through something like sysfs as you
have mentioned.

--=20
Thanks
Nitesh


--p9roNLmE7wHjwGCpMLdsSh6G42Ivh579L--

--BVxbqdCEOjLEJcmbmUgDQ7BWUrYCJpHul
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkXcoRVGaqvbHPuAGo4ZA3AYyozkFAl+XTCUACgkQo4ZA3AYy
ozlkDhAAsS3Pv65/hQac3/IumD28XqdCq8XH9G9vSIdxtzugYG+op/C9RCHLV1L2
p6c7tOd9zxq4hs/Ums+avwo26dWKZO9RPgL2393AhzHefUguCn7e4d4rWSxuxIQ4
IKguDz0Kfeqq/UjNBjbNW5ehfPQcb08svQJ8ObdZI01x0AcDNLLUcCU7kRMx4p1v
ZWFGv3C2zFcwkJuLZOby0PdM/LIbRY/B/9I+MfhutiHGQVzGALk2CT5Ag6pLxQad
fOc6MYw1IzMQzs7KKwsU9DPE96dfffQRs6XJ8lKqg4Xgl//EAHaLCpMZWsvKqFGj
glQI/F763e5W8YEfbcZ3cVtkj9vGSToCERJln1wp7rxSvMiKdfG0Cnzxe/u7Yn34
NMsbA0Dl7Om24F3tc1QMNbXDzrG8iPl61h++KAyyAUnRf9qygkGiGsAtW8pBWl2l
MdjMxLG9MQdpQOg+RXLOwsxpKnsIZ0Uiv7PdXOujJBW3Bpy7iL4eL2AyNV+u+xcC
bVXMOUbJwlGvvuDHJ2lncPSK419juRBpeDZA+hsVKCGpi3FJf4QySHPaNgKZuvRw
xoJE38pH4MWxf1QkDv1HMFcxnItUUnQoP17/nGnr49ws6erfOb/IPXF1YWpBso76
+7opiL9IFbFe0m3XpZrWqmmnYC0vW0Pi7CYUFKwWsQ401pk6mKk=
=MARm
-----END PGP SIGNATURE-----

--BVxbqdCEOjLEJcmbmUgDQ7BWUrYCJpHul--


--===============4940551499123471200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4940551499123471200==--

