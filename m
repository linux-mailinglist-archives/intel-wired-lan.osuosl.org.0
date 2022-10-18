Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EEB6032A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 20:43:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7699483EDA;
	Tue, 18 Oct 2022 18:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7699483EDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666118585;
	bh=eKIKgRGccdS5kB+IFCtJmph9lYLEdWxRaiCPPdeATcU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=laNC4Eto7eNcNPSbZBZtPzIuIl1i1Zte+vlCnlUJbh1OjoVlTEtS+CRfv7PIC/Hix
	 Zac1Ko3cTlb9twi3V+hUC+zCjYqWPSX/JQsAq5IyPMcJ4MMVquvQHbOqZnXSdEhsRU
	 YHxfpCitmpaTAvRn2Uk3eg6FogVzjsMVodLW+l26wm8JcjtaZGW5Iwwy17vD+h64EX
	 4JGZycB7g070266Sc7DCQ2radbhs5Zo7spDjfOrrprJxWKKYYLJcFUCW2fjNoQw2xQ
	 3REp7zcRP9TtjXcLi3rkoFTocxwAPDKDtqq9i3PJM+CE+qXEfkYzBxbn3UGbU0KCmS
	 H6jS3e9ZInxLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id obtlteMbRkjP; Tue, 18 Oct 2022 18:43:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 383A880AF4;
	Tue, 18 Oct 2022 18:43:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 383A880AF4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A9571BF5AA
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 18:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 730CF4192E
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 18:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 730CF4192E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ay0S83QukfBG for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 18:42:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06AAD4192C
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06AAD4192C
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 18:42:57 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id z97so21836048ede.8
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 11:42:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=subject:to:autocrypt:from:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=b9m3P79cxfKp+KJO23HaIp0mB7aImOE3uHUj/vzrCsQ=;
 b=LyMUfmvOf22CD30PsX8V7xN0l4yti39ieCd7ctombNHIISks4mskeGY85+WKOkp7iI
 mbctQP5GCXMbrO/SFhGxqK0buABtPlwY5x8GEQPMqDjFcfLin9DyPbOaF5svyv24/qXF
 cB/qO/HvBVgdCw2lGPB93nFh1ocdCw/2ieNxrenR7zLHliJHyJoC2LKBCs7tXGUFmkpb
 F1Py33jt3goCbEulhPfzbFefFOuD9QVgJuqFZEGnXt0eJnZAj1Jp624l7solLwahY8uE
 x+fjMyTAm79HgJPyN8MiEotyvTdNZSEVhz5EhSGKc7JuZvQoZE79p5qyTlTdnerYGaFV
 /fEA==
X-Gm-Message-State: ACrzQf2bTLuIk8ah4cO5/h5dKzgxafmPBTMgE0gAxHevx1DU0VYnRyR/
 xlP16FXwPz+C705784o9FJnX44i8rLE=
X-Google-Smtp-Source: AMsMyM5M02S4kcukiMV/7JZwD5Mn2ozzzFUuITrA92Ssauo7xJUvd/Ot4GOd07PS9VTsPPaBm7dW2A==
X-Received: by 2002:a05:6402:3215:b0:45c:97de:b438 with SMTP id
 g21-20020a056402321500b0045c97deb438mr3873024eda.7.1666118576058; 
 Tue, 18 Oct 2022 11:42:56 -0700 (PDT)
Received: from [192.168.1.116] ([83.164.51.61])
 by smtp.gmail.com with ESMTPSA id
 i18-20020a170906699200b007812ba2a360sm7991907ejr.149.2022.10.18.11.42.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Oct 2022 11:42:55 -0700 (PDT)
Message-ID: <361c57ff-6b9f-bf39-c720-7dce7622941b@gmail.com>
Date: Tue, 18 Oct 2022 20:42:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
From: xnor <xnoreq@gmail.com>
Autocrypt: addr=xnoreq@gmail.com; keydata=
 xsFNBGEa410BEACyYHMsPTOPDJl79sNKA03oElJgaYefWnT1+2Kq5ioIHRQ3ZS+w/E34caVJ
 b6Q7AzVpCJj83t2YrPpX/nHtbKBeGqzzI66laNb46+7u52y3B4f8Rb0VsrDsLZpaaWvMNB8I
 rXJ+19DwNrVtuf6tasDM5leg9TNONKTuCLFN8J1oRkMozcmJzBuTMLnQkKMysaXGTHATsPcc
 zhrDTg24mWi9Yy0R56tki2Dli7nzhfqofJEFCxnm8WSYhwaMWT47J15CpsFLLFtlux3RZHQe
 y5wRBHxlSaEg1AkAcjTxeAN4okVQPMtNPr9J4qpsDFYr2cgMFjEjI7+Oqpq2LjeI07pnDt/S
 9dgV13asqcaEabK5ApFqZoH7xHMx1EQQwJXiY5BIQSHeF9Gib/BGe3+WEPHXEb4tChtgv26S
 Lp2t5+K+q6hEOy+FY8spcX2doANmHOuKGfq++oVImR83kR12RJpwN3U/EGaK3KiD25fFA3oq
 GqttFlVIomRj6Ys6/13mt3V9k0/NIFYiV+xombIcRgq2F7lppSlM4b1FVHhy1YvlyZRx4xhm
 3eX6Nqw6UCx1VbHD9+jO/LAFbBnchY9EqDRff1RmoZ4ckD86sljuTGR6nXHEn8xE0wH3sKyX
 NnxFwKFB0EDBcgxF6I5GNI/R1eD3cnYNTWr/9VG6cAiI+Ny7OQARAQABzRd4bm9yIDx4bm9y
 ZXFAZ21haWwuY29tPsLBjwQTAQgAORYhBA4x2HEaHeJ62MTBcShK0Rv1iX+dBQJhGuNeBQkF
 o5qAAhsDBQsJCAcCBhUICQoLAgUWAgMBAAAKCRAoStEb9Yl/nfMqEACbSMy9X6C//DXYzXCH
 JZQlh/puT/9clx1OlSJ13KQyDc1MGpp0BoJMyafZFmh/m2ynD4nGPzfLm+iBCd0hC/ijDD02
 n7QZFpgyTCo3+t/t08vS72HVya+ZWHkNoRRReQwDNzeJlwr1xABT9LWGfnP/MYT3pok8ngEq
 icHAWl+6+SOxlWHHX4uEaTjbNhprWRphWaKmC+xzS5YRxYymjz/Kkpki9O+IBlwMNIEiA6ow
 /Niua91P5Kn7dbrrhw02oC0Wo0zspzwuG41c9LxtfCmeGJW9IpQEI50c+ufhbENAsp/Yo8sK
 L+1LTOLNd+mtz1tAbe4TpEgHVaIJvOEFcXgDJkxdBZinEiTywcOdulTz0AfisDjKnMindB7D
 nxVDCdQgzMeqUMglwBqBfmAALYcOBrEYrdORvdCwwe8SlS1pSMRF9c2UZkw/jHdNbTJGStpw
 GPf+9U/9Myr8EBwRpWDdGEkcrsL4woSvMzp6qb14DxFjyiWycuc/eabc8DlAlADN4pD/rRfH
 JJvM0SnJLYazS8BdN6K/Qzc0qeB63bk288EsOAdhwx9q0XeT1E3RA44p0tyrtgPZEhyrm34+
 qv5jBvGGcBE8rLRK4Jsj+0A7Yu9tjnQJCikbyKjGeKkcmueE1uRcKSVT6+akYYvRCD6A/jwI
 fUaQ2Hd90bRBBKv6Xc7BTQRhGuNeARAArBGQH9yNNVriQpDhgZu+gvx18ts/1NXHfzcp8/9m
 ZvY7c1y0EHZ0Mqh09KDiYTPFuDi+bXE0OYhATcFGPlgmclul+VaohkTM2EukMJOIix8fZLP7
 MEZbOsBHhcP3u5uauozMeBFzITGS1QPw1EqMDY8Dm2pKET0903+3iuyr6A25JnLzRM1Tf8Cu
 7KCrebr8/OPeFjWGCALP7lJajcvQq9/0347FsDiA3JRNsZ7CTALhO42xihecU80TMzxZRr3b
 zfQlNeeurnFudMPR+3p6ZlLSoae06eTTOtZH7R920Lbt5UgefTFP66DmBcahthbcfzjXzmHG
 QvCg7ytpRLJQrf76+N4rdj434DRfFFJ/1J8H4r1lQBzBZJVZ8hRm1dIYD7DrKY/wvKFYiYT/
 vJeXpF2Stzd327UNxn9RNOVenvKqPvI50yxoO+hh3aQl9CLqGweDdSCZLz1REQaxA88XdmQ0
 Su538ZwYItFkV8UhMN5RVdhRhb5V70f4IywLNQWkl4UC7+3ECwmDi1yJ6cJpxFdH2PTx0Yyx
 WsqCNp8ebjMRjCtIuchFL9N6UKdLSzEQoiivOe0GhheNjEqj8uxzQVk+KqnzogGE387yjSyC
 7ZS71+d5ruzXiaS2YEGaB58udCkNqnp+1NQnlcUmKP+p8MyhoFZOp7TVCg7rrc6s0esAEQEA
 AcLBfAQYAQgAJhYhBA4x2HEaHeJ62MTBcShK0Rv1iX+dBQJhGuNfBQkFo5qAAhsMAAoJEChK
 0Rv1iX+dQj4P/jR7Ym8QkPYq+oQvgsPHU320ahCTb2ZRx4OQLvYrfAlLtxPMht/E9My1Agpm
 UtG86hBUz3Xej77gIAs47Eyq1AKrxxgUrdy7tJC0Svwu1b2pGi7oUj7gQrV/aYHCH0mCSFSn
 4PPFStueuQ/hf+XHU6ulbOG69SO619VLLr/43HMoOA6cVrVXoB+BrniV1M2mXtmc6KxwVzpm
 w1Jtcpiyr+/xFZP0EVesiNpd4xuffokYo+mgLR12TaZ8yjyx22ZDTkF/HQuyDE85CZOKqZ8y
 f+iMSg6vdwBCk1Mm1he6NYVIYtm7RbN/AJ8JE/IDV1/8xilJEPGEsKsSeGeV4RS4XJuMvDXg
 NPFn77OsnoIgXUUtgRNa2OObdLHoHws9HkYbeeiFG+4uj1+rDrq0skGVz6Sirf3NlpVuv1zK
 SAosrTAJ9k/cI8sHxITZnMSPjdtkv6u4+pdWL16AMJWjm2UCS2BUOvc52IAV3GnZuHf/vuw2
 CtjFYv44Vt8CIBX7cbRoQz1ca/g8HCtsXsozrraU8mRnyshp2MpMdXud1Xr77BNueJ6WoQxq
 6fWTtAzI5Nw5S1AqY6pyHj1wB7umkaper6Es3CAWYTPs5+lN97y9kyC//Ro6y3jBY2919fgK
 cTclmfJXv59txO41KgDb9jJDJQjPE5y9OTGp26raysGL6pRM
To: intel-wired-lan@osuosl.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=subject:to:autocrypt:from:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=b9m3P79cxfKp+KJO23HaIp0mB7aImOE3uHUj/vzrCsQ=;
 b=oEAZff092hPUOBG561eYBYZohlnud1Hebllb+Fb0mtUB64anre/4DRSPCjVIU1m5Tz
 AJALElkq8gjAWJkQhnVjRRQpm8eTu9YpU4sVyqlaC0AD6myI3bOkLVpX4jISOj0jLznY
 BsKVj9GQRY2sxE9ivtr81+jOjXxBs9eXYSuukvcxoVUy35uqL3dvXby9hixkwA0X89pY
 kvPX3WmmeTfgd4rVi1iem3BsKmaejbCzUHe5Ma9Px0GP3pJbUIlUeR86y0XzwCKUBY35
 wUmwsODPdAcO4YH29MMwDFVEKripOWPUum7AWuZIqyApQPFC4bF3ffPXU5NVXWYAhEzD
 t51w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oEAZff09
Subject: [Intel-wired-lan] Bug 216257 - igc: Detected Tx Unit Hang after
 losing carrier, sporadic resets and connectivity loss with Intel I225-V
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
Content-Type: multipart/mixed; boundary="===============2840648292792060562=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============2840648292792060562==
Content-Type: multipart/alternative;
 boundary="------------tAhc0pq9iUfjf3b4gsmNfbys"

This is a multi-part message in MIME format.
--------------tAhc0pq9iUfjf3b4gsmNfbys
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I've reported this bug a while ago on bugzilla.kernel.org but haven't seen any
indication that the bug has even been looked at:
https://bugzilla.kernel.org/show_bug.cgi?id=216257

I have a router with multiple Intel I225-V (rev 03) ethernet controllers.
Three of them, namely eth0, eth1 and eth2 are bridged (br-lan).

Initially, I used Linux 5.18.11. After suspending a computer connected through
eth0, errors started showing up in dmesg and packet loss increased.

With different kernel versions (several 5.15 lts version, 6.0.1) I'm now only
seeing a sudden loss of connectivity on br-lan and a registers dump in dmesg.
The trigger for this seems almost random now, but happens once every couple of
days in the morning hours.

Some of the dmesg snippets at the time of the errors are attached to the bug
report, though I can also send them here if need be.
Same goes for kernel versions, configs and any other info needed.


Thank you for any help.

--------------tAhc0pq9iUfjf3b4gsmNfbys
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <pre class="bz_comment_text" id="comment_text_0">Hello,
I've reported this bug a while ago on bugzilla.kernel.org but haven't seen any 
indication that the bug has even been looked at:
<a class="moz-txt-link-freetext" href="https://bugzilla.kernel.org/show_bug.cgi?id=216257">https://bugzilla.kernel.org/show_bug.cgi?id=216257</a>

I have a router with multiple Intel I225-V (rev 03) ethernet controllers.
Three of them, namely eth0, eth1 and eth2 are bridged (br-lan).

Initially, I used Linux 5.18.11. After suspending a computer connected through 
eth0, errors started showing up in dmesg and packet loss increased.

With different kernel versions (several 5.15 lts version, 6.0.1) I'm now only 
seeing a sudden loss of connectivity on br-lan and a registers dump in dmesg.
The trigger for this seems almost random now, but happens once every couple of 
days in the morning hours.
</pre>
    <pre>Some of the dmesg snippets at the time of the errors are attached to the bug 
report, though I can also send them here if need be.
Same goes for kernel versions, configs and any other info needed.


Thank you for any help.
</pre>
  </body>
</html>

--------------tAhc0pq9iUfjf3b4gsmNfbys--

--===============2840648292792060562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2840648292792060562==--
